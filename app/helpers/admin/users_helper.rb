module Admin
  module UsersHelper

    def application_link(user)
      return "" unless user.application
      link_to user.application.primary_choice_course.start_date ,
                admin_apply_path(user.application) ,
                title:  user.application.summary
    end
  end
end
