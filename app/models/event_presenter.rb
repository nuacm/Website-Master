class EventPresenter
  attr_reader :event
  delegate :headline, :abstract, :company, :id, :speaker, to: :event

  def initialize(event)
    @event = event
  end

  def image
    nil
  end

  def location
    Location.new(
      room: @event.room,
      building: @event.building,
      address: @event.address,
    )
  end

  def full_time
    @event.date_time.to_formatted_s(:long_ordinal)
  end
end

