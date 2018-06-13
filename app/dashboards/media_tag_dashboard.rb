require "administrate/base_dashboard"

class MediaTagDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    media_object: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    regexp_rule: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    xpath_rule: Field::String,
    replace_rule: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :media_object,
    :id,
    :name,
    :regexp_rule,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :media_object,
    :id,
    :name,
    :regexp_rule,
    :created_at,
    :updated_at,
    :xpath_rule,
    :replace_rule,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :media_object,
    :name,
    :regexp_rule,
    :xpath_rule,
    :replace_rule,
  ].freeze

  # Overwrite this method to customize how media tags are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(media_tag)
  #   "MediaTag ##{media_tag.id}"
  # end
end
