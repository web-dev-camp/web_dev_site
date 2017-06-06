module Admin
  class AdminController < ApplicationController
    layout "admin"
    before_action :authenticate_admin

    def authenticate_admin
      user = current_user
      return true if(user) and user.admin?
      redirect_to "/"
    end
  end
end
