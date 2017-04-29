class PagesController < ApplicationController

	# display a view in the pages directory, also used for index
	def show
		if valid_page?
			render template: "pages/#{params[:page]}"
		else
			render file: "public/404.html", status: :not_found
	end

	# check if the file exists in the pages view directory
	private
	def valid_page?
		File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
	end
end
