class Apply < ActiveRecord::Base
  belongs_to :user
  belongs_to :primary_choice_course , class_name: :Course
  belongs_to :secondary_choice_course , class_name: :Course

  validates_presence_of :primary_choice_course_id
end
