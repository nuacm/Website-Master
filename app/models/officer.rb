class Officer < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
end
