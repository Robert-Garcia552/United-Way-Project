class User < ApplicationRecord
  has_one :user_profile

  has_many :events
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
