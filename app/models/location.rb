class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  has_many :dynamic_objects
end
