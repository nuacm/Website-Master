class OfficersController < ApplicationController

	def create
		@officer = Officer.new(officer_params)
		if @officer.save
			index
		end
	end

	def index
		@officers = Officer.all
	end

	private
	def officer_params
		params.require(:Officer).permit(:name, :year, :position, :image_path)
	end
end
