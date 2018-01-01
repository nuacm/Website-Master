class Location
  include ActiveModel::Model
  attr_accessor :room, :building, :address

  def format_short
    "#{room} #{building}"
  end

  def format_extended
    "#{room} #{building}, #{address}"
  end
end
