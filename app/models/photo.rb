class Photo < ActiveRecord::Base
  validates :title, :lattitute, :longitude, :photo_type presence: true
end

