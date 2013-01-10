class AdminController < ApplicationController

  # GET /admin
  def index
    sign_in(:user, User.find(1))
    redirect_to ads_path
  end
end
