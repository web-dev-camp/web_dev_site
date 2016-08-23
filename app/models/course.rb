class Course < ActiveRecord::Base

  default_scope {order(start: :asc)}

  def full_name
    name = self.name
    name += "(#{self.extra})" unless self.extra.blank?
    name += " starts "
    name + I18n.l(self.start.to_date , format: :long)
  end
end
