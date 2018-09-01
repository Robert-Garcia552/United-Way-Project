class User < ApplicationRecord
    attr_accessor :remember_token
    validates :first_name, :last_name, :birthdate, :email, :phone_number, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates_length_of :phone_number, in: 10..13

    after_create_commit :send_welcome_email

    has_secure_password

    validates :email, uniqueness: true

    has_one :user_profile
    has_one_attached :image
    has_many :events
    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event

    def next_three_events
        attending_events.future.first(3)
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    def User.new_token
        SecureRandom.urlsafe_base64
    end

    def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    private

    def send_welcome_email
        WelcomeMailer.with(user: self).welcome.deliver_later
    end

end
