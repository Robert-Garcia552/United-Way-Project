class User < ApplicationRecord
    validates :first_name, :last_name, :birthdate, :email, :phone_number, presence: true

    after_create_commit :send_welcome_email

    has_secure_password
    validates :email, uniqueness: true

    has_one :user_profile
    has_one_attached :avatar
    has_many :events
    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event

    def next_three_events
        attending_events.future.first(3)
    end

    private

    def send_welcome_email
        WelcomeMailer.with(user: self).welcome.deliver_later
    end

end
