class OfficersController < ApplicationController
  before_action :authenticate_as_admin, only: [:new, :create]
  before_action :authenticate_as_super_admin, only: [:edit, :update]

  def index
    @officers = Officer.all
  end

  def new
  	@officer = Officer.new
  end

	def create
		@officer = Officer.new(officer_params)
		if @officer.save
      redirect_to officers_path
		else
      render :new
    end
	end

  def edit
    @officer = Officer.find(params[:id])
  end

  def update
    @officer = Officer.find(params[:id])
    if @officer && @officer.update(officer_params)
      redirect_to officers_path
    else
      render :edit
    end
  end

	private

	def officer_params
		params.require(:officer).permit(:name, :year, :position, :image_path)
	end
end
