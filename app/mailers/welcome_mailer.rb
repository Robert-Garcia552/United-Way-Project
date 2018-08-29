class WelcomeMailer < ActionMailer::Base
   
    def welcome
        @user = User.find(params[:id])
        mail(to: @user.email, subject: "Thanks for connecting with United Way!")
    end

end
