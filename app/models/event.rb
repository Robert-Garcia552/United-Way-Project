class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :rsvps

  scope :ordered, -> { order(:start_at) }
  scope :between, ->(start_date, end_date) do
    where(
      "start_at >= ? and end_at <= ?",
      start_date.beginning_of_day.to_datetime,
      end_date.end_of_day.to_datetime
    )
    

  end
  
  scope :future, -> { where("start_at >= ?", Time.now )}

end
