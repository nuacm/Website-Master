class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_as_admin
    authenticate_user! && admin_user?
  end

  def admin_user?
    current_user && (current_user.admin? || current_user.super_admin?)
  end
end
