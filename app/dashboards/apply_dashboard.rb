require "administrate/base_dashboard"

class ApplyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    primary_choice_course: Field::BelongsTo.with_options(class_name: "Course"),
    secondary_choice_course: Field::BelongsTo.with_options(class_name: "Course"),
    id: Field::Number,
    primary_choice_course_id: Field::Number,
    secondary_choice_course_id: Field::Number,
    plan: Field::String,
    discount_code: Field::String,
    comment: Field::Text,
    sent: Field::DateTime,
    accepted: Field::DateTime,
    funds_received: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :primary_choice_course,
    :secondary_choice_course,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :primary_choice_course,
    :secondary_choice_course,
    :id,
    :primary_choice_course_id,
    :secondary_choice_course_id,
    :plan,
    :discount_code,
    :comment,
    :sent,
    :accepted,
    :funds_received,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :primary_choice_course,
    :secondary_choice_course,
    :primary_choice_course_id,
    :secondary_choice_course_id,
    :plan,
    :discount_code,
    :comment,
    :sent,
    :accepted,
    :funds_received,
  ].freeze

  # Overwrite this method to customize how applies are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(apply)
  #   "Apply ##{apply.id}"
  # end
end
