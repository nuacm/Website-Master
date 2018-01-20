class Event < ApplicationRecord

  # validations
  validates :headline, presence: true
  validates :date_time, presence: true
  validates :room, presence: true
  validates :building, presence: true
  validates :address, presence: true

  def self.upcoming
    where(["date_time >= ?", DateTime.current]).order("date_time ASC")
  end

  def self.past
    where(["date_time < ?", DateTime.current]).order("date_time DESC")
  end
end
