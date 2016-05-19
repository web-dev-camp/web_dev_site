module AppliesHelper
  def course_select
    Course.all.order(:name).map { |c| [c.full_name, c.id ] }
  end

  def plan_select
    Apply::PLANS
  end
end
