class Location
  include ActiveModel::Model
  attr_accessor :room, :building, :address

  def short_form
    "#{room} #{building}"
  end

  def long_form
    "#{room} #{building}, #{address}"
  end

  def self.default
    new(
      room: 108,
      building: "West Village G",
      address: "450 Parker Street",
    )
  end
end
