class DynamicObject < ApplicationRecord
  belongs_to :dynamic_object_type
  belongs_to :location
  serialize :properties, Hash

  validate :validate_properties
  def validate_properties
    dynamic_object_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
