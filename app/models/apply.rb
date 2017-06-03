class Apply < ActiveRecord::Base
  PLANS =     { standard: "9000¢ - 9 week prepayment, no cancellation" ,
                flex: "10200 - 9 week prepayment, 1 week cancellation" ,
                super_flex: "11200¢ - 3 week prepayment, 1 week cancellation" }

  belongs_to :user
  belongs_to :primary_choice_course , class_name: :Course
  belongs_to :secondary_choice_course , class_name: :Course

  validates_presence_of :primary_choice_course_id

  default_scope {order('created_at DESC') }

  def plan_name
    PLANS[self.plan.to_sym]
  end
end
