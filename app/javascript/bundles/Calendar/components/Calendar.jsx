import React from "react";
import dateFns from "date-fns";
import axios from "axios";
import Header from './Header';
import Days from './Days';
import Cells from './Cells';
import EventDialog from './EventDialog';
import FormDialog from './FormDialog';

const token = document.querySelector('meta[name="csrf-token"]')
                .getAttribute('content');

const headers = {
                  'X-Requested-With': 'XMLHttpRequest',
                  'X-CSRF-TOKEN':     token
                }

class Calendar extends React.Component {
  state = {
    currentMonth: new Date(),
    currentDate: new Date(),
    events: {},
    eventDialogOpen: this.props.event !== undefined,
    formDialogOpen: false,
    event: this.props.event || {
      title: '',
      description: '',
      location: '',
      street_address: '',
      city: '',
      state: '',
      zip:'',
      start_at: new Date(),
      end_at: new Date(),
      attending: false
    }
  }

  componentDidMount(){
    const { currentMonth } = this.state;
    const { formattedStartDate, formattedEndDate } = this.getMonthConsts(currentMonth);
    axios.get(`/events.json?start_date=${formattedStartDate}&end_date=${formattedEndDate}`)
      .then((response) => {
        this.setState({events: response.data});
      })
      .catch((error) => {
        console.log(error.response);
      })
  }

  render() {
    const { currentMonth, events, formDialogOpen,
            event, eventDialogOpen, currentDate } = this.state;
    const { currentUser } = this.props;
    const { startDate, endDate, monthStart } = this.getMonthConsts(currentMonth);
    return (
      <div>
        <div className="calendar">
          <Header
            nextMonth={this.nextMonth}
            prevMonth={this.prevMonth}
            currentMonth={currentMonth}
          />
          <Days
            currentMonth={currentMonth}
          />
          <Cells
            currentDate={currentDate}
            currentMonth={currentMonth}
            event={event}
            events={events}
            handleEventClick={this.handleEventClick}
            handleDateClick={this.handleDateClick}
            monthStart={monthStart}
            startDate={startDate}
            endDate={endDate}
            currentUser={currentUser}
          />
        </div>
        <EventDialog
          open={eventDialogOpen}
          event={event}
          user={currentUser}
          handleClose={this.handleEventDialogClose}
          destroyEvent={this.destroyEvent}
          rsvpFor={this.rsvpFor}
          cancelRsvp={this.cancelRsvp}
          currentUser={currentUser}
        />
        { currentUser && currentUser.admin &&
          <FormDialog
            open={formDialogOpen}
            event={event}
            handleClose={this.handleFormDialogClose}
            handleTitleChange={this.handleTitleChange}
            handleDescriptionChange={this.handleDescriptionChange}
            handleLocationChange={this.handleLocationChange}
            handleStreetAddressChange={this.handleStreetAddressChange}
            handleCityChange={this.handleCityChange}
            handleStateChange={this.handleStateChange}
            handleZipChange={this.handleZipChange}
            handleStartAtChange={this.handleStartAtChange}
            handleEndAtChange={this.handleEndAtChange}
            createEvent={this.createEvent}
          />
        }
      </div>
    );
  }

  nextMonth = () => {
    const month = dateFns.addMonths(this.state.currentMonth, 1);
    this.resetMonth(month);
  }

  prevMonth = () => {
    const month = dateFns.subMonths(this.state.currentMonth, 1);
    this.resetMonth(month);
  }

  handleEventDialogClose = () => {
    this.setState({
      eventDialogOpen: false,
      event: {
        title: '',
        description: '',
        location: '',
        street_address: '',
        city: '',
        state: '',
        zip:'',
        start_at: new Date(),
        end_at: new Date()
      }
    })
  }

  handleFormDialogClose = () => {
    this.setState({
      formDialogOpen: false,
      event: {
        title: '',
        description: '',
        location: '',
        street_address: '',
        city: '',
        state: '',
        zip:'',
        start_at: new Date(),
        end_at: new Date(),
      }
    })
  }

  handleEventClick = (calendarEvent, clickEvent) => {
    clickEvent.stopPropagation();
    this.setState({
      eventDialogOpen: true,
      event: calendarEvent
    })
  }

  handleDateClick = date => {
    let { event } = this.state;
    let start_at = dateFns.parse(date);
    let end_at = dateFns.parse(date);
    start_at.setHours(12, 0);
    end_at.setHours(12, 0);
    event.start_at = start_at;
    event.end_at = end_at;
    this.setState({
      event,
      formDialogOpen: true
    });
  }

  handleStartAtChange = time => {
    let { event } = this.state;
    const hours = time.getHours();
    const minutes = time.getMinutes();
    event.start_at.setHours(hours, minutes)
    this.setState({ event });
  }

  handleEndAtChange = time => {
    let { event } = this.state;
    const hours = time.getHours();
    const minutes = time.getMinutes();
    event.end_at.setHours(hours, minutes)
    this.setState({ event });
  }

  handleTitleChange = clickEvent => {
    let { event } = this.state;
    event.title = clickEvent.target.value;
    this.setState({ event });
  }

  handleDescriptionChange = clickEvent => {
    let { event } = this.state;
    event.description = clickEvent.target.value;
    this.setState({ event });
  }

  handleLocationChange = clickEvent => {
    let { event } = this.state;
    event.location = clickEvent.target.value;
    this.setState({ event });
  }

  handleStreetAddressChange = clickEvent => {
    let { event } = this.state;
    event.street_address = clickEvent.target.value;
    this.setState({ event });
  }

  handleCityChange = clickEvent => {
    let { event } = this.state;
    event.city = clickEvent.target.value;
    this.setState({ event });
  }
  handleStateChange = clickEvent => {
    let { event } = this.state;
    event.state = clickEvent.target.value;
    this.setState({ event });
  }

  handleZipChange = clickEvent => {
    let { event } = this.state;
    event.zip = clickEvent.target.value;
    this.setState({ event });
  }

  createEvent = event => {
    const eventDateFormat = "YYYY-MM-DD";
    const eventFormattedDate = dateFns.format(event.start_at, eventDateFormat);
    let { events } = this.state;
    axios.post(`/events.json`, event, {headers: headers})
      .then((response) => {
        if(events[eventFormattedDate]){
          events[eventFormattedDate].push(response.data);
        }else{
          events[eventFormattedDate] = [response.data];
        }
        events[eventFormattedDate].sort((e1, e2) => {
          return e1.start_at > e2.start_at ? 1 : e1.start_at < e2.start_at ? -1 : 0
        })
        this.setState({
          events,
          formDialogOpen: false,
          event: {
            title: '',
            description: '',
            location: '',
            street_address: '',
            city: '',
            state: '',
            zip:'',
            start_at: new Date(),
            end_at: new Date()
          }
        })
      })
  }

  destroyEvent = event => {
    const eventDateFormat = "YYYY-MM-DD";
    const eventFormattedDate = dateFns.format(event.start_at, eventDateFormat);
    let { events } = this.state;
    axios.delete(`/events/${event.id}.json`, {headers: headers})
      .then((response) => {
        events[eventFormattedDate] = events[eventFormattedDate].filter((e) => {
          return e.id !== event.id
        })
        this.setState({
          events,
          eventDialogOpen: false
        })
      })
      .catch((error) => {
        console.log(error.response)
      })
  }

  rsvpFor = event => {
    const eventDate = dateFns.format(event.start_at, "YYYY-MM-DD");
    let { events } = this.state;
    let dailyEvents = events[eventDate];
    axios.post(`/events/${event.id}/rsvps.json`, {}, {headers: headers})
      .then((response) => {
        dailyEvents.forEach((e) => {
          if(e.id === response.data.event_id){
            e.attending = true
          }
        });
        this.setState({events});
      })
  }
  
  cancelRsvp = event => {
    const eventDate = dateFns.format(event.start_at, "YYYY-MM-DD");
    let { events } = this.state;
    let dailyEvents = events[eventDate];
    axios.delete(`/events/${event.id}/rsvps`, {headers: headers})
      .then((response) => {
        dailyEvents.forEach((e) => {
          if(e.id === response.data.event_id){
            e.attending = false
          }
        });
        this.setState({events});
      })
    }

  resetMonth = month => {
    const { formattedStartDate, formattedEndDate } = this.getMonthConsts(month);
    axios.get(`/events.json?start_date=${formattedStartDate}&end_date=${formattedEndDate}`)
      .then((response) => {
        this.setState({currentMonth: month, events: response.data});
      })
      .catch((error) => {
        console.log(error.response);
      })
  }

  getMonthConsts = month => {
    const monthStart = dateFns.startOfMonth(month);
    const monthEnd = dateFns.endOfMonth(monthStart);
    const startDate = dateFns.startOfWeek(monthStart);
    const endDate = dateFns.endOfWeek(monthEnd);
    const dateFormat = "YYYY-MM-DD";
    const formattedStartDate = dateFns.format(startDate, dateFormat);
    const formattedEndDate = dateFns.format(endDate, dateFormat);
    return { monthStart, startDate, endDate, formattedStartDate, formattedEndDate }
  }

}

export default Calendar;
