class User < ApplicationRecord
    has_secure_password

    has_one :user_profile

    has_many :events

    has_many :rsvps
    has_many :attending_events, through: :rsvps, source: :event
end
