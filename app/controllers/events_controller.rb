class EventsController < ApplicationController
  before_action :authenticate_as_admin, except: [:index]

	def index
		@upcoming_events = Event.upcoming.map{ |event| EventPresenter.new(event) }
    @past_events = Event.past.map{ |event| EventPresenter.new(event) }
	end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to events_path(event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    if event && event.update(event_params)
      redirect_to events_path
    else
      :edit
    end
  end

  def destroy
    if Event.delete(params[:id])
      redirect_to events_path
    else
      render :edit
    end
  end

	private

	def event_params
		params.require(:event).permit(
      :headline,
      :abstract,
      :room,
      :building,
      :address,
      :date_time,
      :speaker,
      :company,
      :company_logo
    )
	end
end
