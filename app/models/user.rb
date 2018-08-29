class User < ApplicationRecord
    validates :email, presence: true

    after_create_commit :welcome_all_users
    
    has_secure_password

    has_one :user_profile

    has_many :events

    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event
   
    private

    def welcome_all_users
        User.where.not(id: self.id).each do |user|
            welcome(user)
        end
    end

    def welcome(user)
        WelcomeMailer.with(user: user).welcome.deliver_later
        sleep 1
    end

end
