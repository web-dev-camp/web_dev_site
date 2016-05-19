require "administrate/base_dashboard"

class ResumeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    street: Field::String,
    city: Field::String,
    country: Field::String,
    school: Field::Text,
    uni: Field::Text,
    internship: Field::Text,
    work: Field::Text,
    projects: Field::Text,
    soft_skills: Field::Text,
    tech_skills: Field::Text,
    interests: Field::Text,
    motivation: Field::Text,
    finance: Field::Text,
    other: Field::Text,
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
    :id,
    :street,
    :city,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :street,
    :city,
    :country,
    :school,
    :uni,
    :internship,
    :work,
    :projects,
    :soft_skills,
    :tech_skills,
    :interests,
    :motivation,
    :finance,
    :other,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :street,
    :city,
    :country,
    :school,
    :uni,
    :internship,
    :work,
    :projects,
    :soft_skills,
    :tech_skills,
    :interests,
    :motivation,
    :finance,
    :other,
  ].freeze

  # Overwrite this method to customize how resumes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(resume)
  #   "Resume ##{resume.id}"
  # end
end
