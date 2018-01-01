class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	private

	def event_params
		params.require(:Event).permit(:headline, :abstract, :location, :date, :start_time, :speaker, :company, :company_logo)
	end
end
