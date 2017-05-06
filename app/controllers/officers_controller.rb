class OfficersController < ApplicationController

	def new
		@officer = new Officer
		@officer
	end

	def create
		@officer = Officer.new(officer_params)
	end

	def index
		@officers = Officer.all
	end

	def show
		@officer = Officer.find(params[:id])
	end

	private
	def officer_params
		params.require(:Officer).permit(:name, :year, :position, :image_path)
	end

end
