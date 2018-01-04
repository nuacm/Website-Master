class EventsController < ApplicationController

	def index
		@events = Event.all.map do |event|
      EventPresenter.new(event)
    end
	end

  def new
    # disabled until auth for event creation is implemented
    #@event = Event.new
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to event_path(event)
    else
      render new
    end
  end

	private

	def event_params
		params.require(:event).permit(:headline, :abstract, :location, :date_time, :speaker, :company, :company_logo)
	end
end
