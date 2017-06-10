module Admin
  module AdminHelper

    def admin_course_applicants_path(course)
      admin_applies_path( { q: { primary_choice_course_id_eq: course.id} })
    end

    def course_applicants_link(course)
      return "" unless course
      link = link_to course.name , admin_course_path(course) + " "
      link + link_to( "(#{course.applications.length})" , admin_course_applicants_path(course))
    end
  end
end
