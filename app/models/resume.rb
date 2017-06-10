class Resume < ActiveRecord::Base
  belongs_to :user

  default_scope {order('created_at DESC') }

  def percent
    attribs = percent_attributes
    non_nil = attribs.sum{ |name| self.attributes[name] == nil ? 0 : 1}
    (non_nil * 100) / attribs.length
  end

  def percent_attributes
    Resume.column_names - ["id" , "user_id" , "created_at", "updated_at"]
  end
end
