module AppliesHelper
  def course_select
    Course.all.order(:name).map { |c| [c.name, c.id ] }
  end

  def plan_select
    { free: "Free - Only applies on the free course" ,
      standard: "2100¢ - 8 week prepayment, no cancellation" ,
      flex: "2400¢ - 8 week prepayment, 2 week cancellation" ,
      super_flex: "2900¢ - 2 week prepayment, stop anytime" }
  end
end
