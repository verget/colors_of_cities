class Photo < ActiveRecord::Base
  validates :title, presence: true
  validates :lattitute, presence: true
  validates :longitude, presence: true
  validates :photo_type, presence: true
end

