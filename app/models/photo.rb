class Photo < ActiveRecord::Base
include Authority::Abilities
self.authorizer_name = 'AdminAuthorizer'  validates :title, :lattitute, :longitude, :photo_type, presence: true
  belongs_to :user 
  mount_uploader :file, ImageUploader
end

