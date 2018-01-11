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
    if @event.room.present? && @event.building.present? && @event.address.present?
      "#{@event.room} #{@event.building}, #{@event.address}"
    else
      "#{@event.room} #{@event.building}"
    end
  end

  def full_time
    @event.date_time.to_formatted_s(:long_ordinal)
  end
end

