class OfficersController < ApplicationController

	def create
		@officer = Officer.new(officer_params)
		@officer.save
	end

	def index
		@officers = Officer.all
	end

	private
	def officer_params
		params.require(:Officer).permit(:name, :year, :position, :image_path)
	end
end
