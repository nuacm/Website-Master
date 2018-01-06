class Location
  include ActiveModel::Model
  attr_accessor :room, :building, :address

  def self.default_room
    "108"
  end

  def self.default_building
    "West Village G"
  end

  def self.default_address
    "450 Parker St. Boston, Ma"
  end

  def format_short
    "#{room} #{building}"
  end

  def format_extended
    "#{room} #{building}, #{address}"
  end
end
