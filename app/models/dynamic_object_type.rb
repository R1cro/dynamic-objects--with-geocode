class DynamicObjectType < ApplicationRecord
  has_many :fields, class_name: 'DynamicObjectField'
  accepts_nested_attributes_for :fields, allow_destroy: true
end
