class Apply < ActiveRecord::Base
  PLANS =     { free: "Free places - Only for women for 26.9" ,
                standard: "2100¢ - 8 week prepayment, no cancellation" ,
                flex: "2400¢ - 8 week prepayment, 2 week cancellation" ,
                super_flex: "2900¢ - 2 week prepayment, stop anytime" }

  belongs_to :user
  belongs_to :primary_choice_course , class_name: :Course
  belongs_to :secondary_choice_course , class_name: :Course

  validates_presence_of :primary_choice_course_id

  def plan_name
    PLANS[self.plan.to_sym]
  end
end
