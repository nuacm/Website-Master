class Event < ApplicationRecord

  # validations
  validates :headline, presence: true
  validates :abstract, presence: true
  validates :date_time, presence: true
  validates :speaker, presence: true
end
