class PagesController < ApplicationController

	# display a view in the pages directory, also used for index
	def show
		if valid_page?
			render template: "pages/#{params[:page]}"
		else
			redirect_to root_path
		end
	end

	# check if the file exists in the pages view directory
	private

	def valid_page?
		File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
	end
end
