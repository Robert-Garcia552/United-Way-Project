import React from 'react';
import dateFns from 'date-fns';
import DailyEvents from './DailyEvents';

const Cell = props => {
  const { day, monthStart, currentDate, events, currentUser } = props;
  const dateFormat = "D";
  const formattedDate = dateFns.format(day, dateFormat);
  const eventDateFormat = "YYYY-MM-DD";
  const eventFormattedDate = dateFns.format(day, eventDateFormat);
  const cursor = currentUser && currentUser.admin ? 'pointer' : 'auto';
  const style={cursor}
  return(
    <div
      className={`col cell ${
        !dateFns.isSameMonth(day, monthStart)
          ? "disabled"
          : dateFns.isSameDay(day, currentDate) ? "current" : ""
      }`}
      onClick={ () => { props.handleDateClick(day) }  }
      style={style}
    >
      <DailyEvents dailyEvents={events[eventFormattedDate] || []} {...props} />
      <span className="number">{formattedDate}</span>
    </div>
  );

}

export default Cell;
