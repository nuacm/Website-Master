class Officer < ApplicationRecord

  # Validations
  validates :name, presence: true
  validates :position, presence: true
  validates :image_path, presence: true

end
