class EventsController < ApplicationController
  before_action :authenticate_as_admin, only: [:new, :create]

	def index
		@upcoming_events = Event.upcoming.map{ |event| EventPresenter.new(event) }
    @past_events = Event.past.map{ |event| EventPresenter.new(event) }
	end

  def new
    @event = Event.new
  end

  def create
    puts params
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
