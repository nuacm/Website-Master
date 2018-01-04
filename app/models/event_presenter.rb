class EventPresenter
  attr_reader :event
  delegate :headline, :abstract, :company, :date_time, :id, :speaker, to: :event

  def initialize(event)
    @event = event
  end

  def event_month
    Date::ABBR_MONTHNAMES[@event.date_time.month]
  end

  def image
    nil
  end

  def full_time

  end

  def event_day
    @event.date_time.day
  end
end
