import React from 'react';
import dateFns from 'date-fns';
import Dialog from '@material-ui/core/Dialog';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Button from '@material-ui/core/Button';
import DialogActions from '@material-ui/core/DialogActions';
import { FacebookShareButton, FacebookIcon, GooglePlusIcon, GooglePlusShareButton, EmailIcon, EmailShareButton, TwitterIcon, TwitterShareButton, LinkedinIcon, LinkedinShareButton} from 'react-share'

const actionButton = (props, event) => {
  if(props.user && event.attending) {
    return <Button onClick={ () => { props.cancelRsvp(event)  } } className="btn btn-danger">Stop Attending</Button>
  }else if(props.user){
    return <Button onClick={ () => { props.rsvpFor(event) } } className="btn btn-info">Register</Button>
  }else{
    return <Button onClick={ () => { Turbolinks.visit('/users/new') } } className="btn btn-danger">Sign Up</Button>
  }
}

const EventDialog = props => {
  const { open, event, user } = props;
  const dateFormat = "MMMM Do";
  const timeFormat = "h:mm a";

  return(
    <Dialog
      open={open}
      onClose={props.handleClose}
    >
      <DialogTitle>
        { dateFns.format(event.start_at, dateFormat)}<br></br>
        { event.title }
      </DialogTitle>
      <DialogContent>
        <DialogContentText>
          { event.description }
        </DialogContentText>
      </DialogContent>
      <DialogContent>
        <DialogContentText>
          <b>Location:</b><br></br>
          { event.location }<br></br>
          { event.street_address }<br></br>
          { event.city },
          {' '}{ event.state },
          {' '}{ event.zip }<br></br>
          <b>Start: </b>{ dateFns.format(event.start_at, timeFormat) }<br></br>
          <b>End: </b>{ dateFns.format(event.end_at, timeFormat) }<br></br>
        </DialogContentText>
      </DialogContent>
        <DialogActions>
        <FacebookShareButton url={`http://google.com`}>
          <FacebookIcon size={32} round={true} />
        </FacebookShareButton>
        <TwitterShareButton url={`http://google.com`}>
          <TwitterIcon size={32} round={true} />
        </TwitterShareButton>
        <LinkedinShareButton url={`http://google.com`}>
          <LinkedinIcon size={32} round={true} />
        </LinkedinShareButton>
        <GooglePlusShareButton url={`http://google.com`}>
          <GooglePlusIcon size={32} round={true} />
        </GooglePlusShareButton>
        <EmailShareButton url={`http://google.com`}>
          <EmailIcon size={32} round={true} />
        </EmailShareButton>
        <Button onClick={props.handleClose} color="primary">
          Cancel
        </Button>
        { user && user.admin && user.id === event.user_id &&
          <Button onClick={ () => { props.destroyEvent(event) } } color="secondary">
            Delete
          </Button>
        }
        { actionButton(props, event) }
      </DialogActions>
    </Dialog>
  );
}

export default EventDialog
