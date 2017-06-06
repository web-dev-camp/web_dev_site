# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class AdminController < ApplicationController
    layout "admin"
    before_action :authenticate_admin

    def authenticate_admin
      user = current_user
      if(user)
        redirect_to "/" unless user.admin?
      end
    end
  end
end
