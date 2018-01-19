class EventPresenter
  attr_reader :event
  delegate :headline, :abstract, :company, :id, :speaker, to: :event

  def initialize(event)
    @event = event
  end

  def image
    nil
  end

  def shorthand_location
    if @event.room.present? && @event.building.present?
      "#{@event.room} #{@event.building}"
    end
  end

  def address
    if @event.address.present?
      @event.address
    end
  end

  def full_time
    @event.date_time.to_formatted_s(:long_ordinal)
  end
end

