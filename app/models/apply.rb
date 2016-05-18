class Apply < ActiveRecord::Base
  belongs_to :user

  validate :primary_choice_course_id
end
