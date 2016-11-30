module AppliesHelper
  def course_select
    Course.where("start > ?" , Time.now).order(:start).map { |c| [c.dates, c.id ] }
  end

  def plan_select
    Apply::PLANS
  end
end
