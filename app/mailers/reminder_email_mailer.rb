class ReminderEmailMailer < ApplicationMailer
  def event_reminder_email
    @user = params[:user]
    @rsvp = params[:user].rsvps.last.event
    mail(to: @user.email, subject: "REMINDER")
  end
end
