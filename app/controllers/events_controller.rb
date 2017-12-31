class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	private
	def event_params
		params.require(:Event).permit(:name, :headline, :abstract, :location, :start_time, :speaker, :company)
	end
end
