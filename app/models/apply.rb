class Apply < ActiveRecord::Base
  belongs_to :user

  validate :primary_choice_id
end
