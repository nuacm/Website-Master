class AdminController < ApplicationController
  before_action :authenticate_as_admin
end
