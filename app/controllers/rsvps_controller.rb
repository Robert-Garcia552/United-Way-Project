class RsvpsController < ApplicationController
  before_action :set_event

  def create
    @rsvp = current_user.rsvps.find_or_create_by(event: @event)
    render json: @rsvp

 respond_to do |format|
   if current_user.rsvps
     # Tell the UserMailer to send a welcome email after save
     ReminderEmailMailer.with(user: current_user).event_reminder_email.deliver_later

     format.html { redirect_to(@user, notice: 'User was successfully created.') }
     format.json { render json: @user, status: :created, location: @user }
   else
     format.html { render action: 'new' }
     format.json { render json: @user.errors, status: :unprocessable_entity }
   end
 end
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
