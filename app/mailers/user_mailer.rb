class UserMailer < ApplicationMailer

    def password_reset(user)
        @user = user
        mail to: @user.email, subject: "Password reset"
      end
      
      def upcoming_event
        @user = params[:user]
        mail(to: @user.email, subject: "Your Event is 3 Days Away!")
    end
    
end
