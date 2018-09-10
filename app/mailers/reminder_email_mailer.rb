class ReminderEmailMailer < ApplicationMailer
  
  def event_reminder_email
    @user = params[:user]
    @rsvp = params[:user].rsvps.last.event
    mail(to: @user.email, subject: "REMINDER")
  end

  def upcoming_event
    @user = params[:user]
    mail(to: @user.email, subject: "Your Event is 3 Days Away!")
  end
  
end
