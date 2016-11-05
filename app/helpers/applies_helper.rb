module AppliesHelper
  def course_select
    Course.where("start > ?" , Time.now).order(:start).map { |c| [c.full_name, c.id ] }
  end

  def plan_select
    Apply::PLANS
  end
end
