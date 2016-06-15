class Course < ActiveRecord::Base

  default_scope {order(start: :asc)}

  def full_name
    name = self.name
    name += "(#{self.extra})" unless self.extra.blank?
    name + " starts " + self.start.to_date.to_s
  end
end
