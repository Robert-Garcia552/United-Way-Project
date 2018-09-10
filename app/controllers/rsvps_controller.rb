class RsvpsController < ApplicationController
  before_action :set_event

  def create
    @rsvp = current_user.rsvps.find_or_create_by(event: @event)
    render json: @rsvp
     # Tell the UserMailer to send a welcome email after save
     ReminderEmailMailer.with(user: current_user).event_reminder_email.deliver_now
   end

  def destroy
    rsvp = current_user.rsvps.find_by(event: @event)
    rsvp.destroy
    render json: rsvp
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
