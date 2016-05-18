class Course < ActiveRecord::Base

  def full_name
    name = self.name
    name += "(#{self.extra})" unless self.extra.blank?
    name + " starts " + self.start.to_date.to_s
  end
end
