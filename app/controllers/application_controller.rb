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

  helper_method :admin_user?, :super_admin_user?
end
