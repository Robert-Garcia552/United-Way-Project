class WelcomeMailer < ApplicationMailer
   
    def welcome
        @user = params[:user]
        mail(to: @user.email, subject: "Thanks for connecting with United Way!")
    end

end
