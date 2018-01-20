class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_as_admin
    authenticate_user! && admin_user?
  end

  def authenticate_as_super_admin
    authenticate_user! && super_admin_user?
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
      composite_meeting_time: "#{default_location.short_form} at 6:00 PM",
      composite_meeting_schedule: "Wednesday at 6:00 PM",
    )
  end

  helper_method :admin_user?, :super_admin_user?, :default_meeting_details

  private

  def default_location
    Location.default
  end

end
