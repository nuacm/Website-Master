class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_as_admin
    authenticate_user! && admin_user?
  end

  def admin_user?
    current_user && (current_user.admin? || current_user.super_admin?)
  end

  def super_admin_user?
    current_user && current_user.super_admin?
  end

  def default_meeting_details

    OpenStruct.new(
      location: default_location,
      time: "6:00 PM",
      composite_meeting_time: "108 West Village G at 6:00 PM",
      composite_meeting_schedule: "Wednesday at 6:00 PM",
    )
  end

  helper_method :admin_user?, :super_admin_user?, :default_meeting_details

  private

  def default_location
    OpenStruct.new(
      room: 108,
      building: "West Village G",
      address: "450 Parker Street",
      short_form: "108 West Village G",
      long_form: "108 West Village G, 450 Parker Steet",
    )
  end

end
