class User < ApplicationRecord
  has_one :user_profile
  has_many :events

end
