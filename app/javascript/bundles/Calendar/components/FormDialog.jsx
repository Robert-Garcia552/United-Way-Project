import React, { Component } from 'react';
import Button from '@material-ui/core/Button';
import TextField from '@material-ui/core/TextField';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import dateFns from 'date-fns';
import TimeInput from 'material-ui-time-picker';
import InputLabel from '@material-ui/core/InputLabel';
import FormControl from '@material-ui/core/FormControl';
import CloudUploadIcon from '@material-ui/icons/CloudUpload';


const FormDialog = props => {
  const { event, createEvent, open } = props;
  return (
    <div>
      <Dialog
        open={open}
        onClose={props.handleClose}
      >
        <DialogTitle>New Event for {dateFns.format(event.start_at, "MMMM Do")}</DialogTitle>
        <DialogContent> * required field</DialogContent>
        <DialogContent>
          <TextField
            margin="dense"
            id="title"
            label=" * Title"
            type="text"
            value={event.title}
            onChange={props.handleTitleChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="description"
            label=" * Description"
            type="text"
            value={event.description}
            onChange={props.handleDescriptionChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="location"
            label=" * Location"
            type="text"
            value={event.location}
            onChange={props.handleLocationChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="street_address"
            label=" * Street Address"
            type="text"
            value={event.street_address}
            onChange={props.handleStreetAddressChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="city"
            label=" * City"
            type="text"
            value={event.city}
            onChange={props.handleCityChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="state"
            label=" * State"
            type="text"
            value={event.state}
            onChange={props.handleStateChange}
            fullWidth
          />
          <TextField
            margin="dense"
            id="zip"
            label=" * Zip Code"
            type="text"
            value={event.zip}
            onChange={props.handleZipChange}
            fullWidth
          />
          <FormControl
            fullWidth
            margin="dense"
          >
            <InputLabel htmlFor="start_at"> * Start</InputLabel>
            <TimeInput
              id="start_at"
              name="start_at"
              mode="12h"
              value={event.start_at}
              onChange={props.handleStartAtChange}
            />
          </FormControl>
          <FormControl
            fullWidth
            margin="dense"
          >
            <InputLabel htmlFor="end_at"> * End</InputLabel>
            <TimeInput
              id="end_at"
              name="end_at"
              mode="12h"
              value={event.end_at}
              onChange={props.handleEndAtChange}
            />
          </FormControl>          
          <Button component="span"> 
            * Image
            <CloudUploadIcon  />
            <input 
              accept="image/*" 
              type="file" 
              style={{
                opacity: 0,
                position: 'absolute',
                top: 0,
                bottom: 0,
                right: 0,
                width: '100%'
              }} 
              onChange={props.handleImageChange}
            />             
          </Button> 
          <TextField
            margin="dense"
            id="image"
            label="Image"
            type="text"
            value={event.image.name}
            fullWidth
            disabled
          />          
        </DialogContent>
        <DialogActions>
          <Button onClick={props.handleClose} color="primary">
            Cancel
          </Button>
          <Button onClick={ () => { props.createEvent(event) } } color="primary">
            Submit
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );

}

export default FormDialog
