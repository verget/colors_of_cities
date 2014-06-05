class Photo < ActiveRecord::Base
  validates :title, :lattitute, :longitude, :photo_type, 
  presence: true
  belongs_to :user 
  mount_uploader :file, ImageUploader
end

