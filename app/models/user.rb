class User < ApplicationRecord
    validates :email, presence: true

    after_create_commit :send_welcome_email
    
    has_secure_password
    validates :email, uniqueness: true

    has_one :user_profile

    has_many :events
    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event
   
    private

    def send_welcome_email
        WelcomeMailer.with(user: self).welcome.deliver_later
    end

end
