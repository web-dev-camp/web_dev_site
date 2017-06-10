class Course < ActiveRecord::Base

  default_scope {order(start: :asc)}

  def full_name
    name = self.name
    name += "(#{self.extra})" unless self.extra.blank?
    name += " starts "
    name + start_date
  end

  def dates
    I18n.l(self.start.to_date , format: :short) + " - " +
    I18n.l(self.start.to_date + course_length  , format: :short)
  end

  def course_length
    9.week
  end

  def start_date
    I18n.l(self.start.to_date , format: :long)
  end

  def applications
    Apply.where( primary_choice_course_id: self.id)
  end
  def name_id
    "#{name}(#{id})"
  end
end
