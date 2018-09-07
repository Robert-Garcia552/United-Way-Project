class ReminderEmailMailer < ApplicationMailer
  def event_reminder_email
    @user = params[:user]
    mail(to: @user.email, subject: "REMINDER")
  end
end
