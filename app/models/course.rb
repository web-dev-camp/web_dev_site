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
    I18n.l(self.start.to_date + 8.week  , format: :short)
  end

  def start_date
    I18n.l(self.start.to_date , format: :long)
  end
end
