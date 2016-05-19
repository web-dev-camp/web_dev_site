# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin

    def authenticate_admin
      ok = current_user != nil
      ok = current_user.email == "torsten@villataika.fi" if ok
      redirect_to "/" unless ok
    end
  end
end
