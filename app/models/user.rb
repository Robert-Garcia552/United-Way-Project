class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true

    has_one :user_profile

    has_many :events

    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event
end
