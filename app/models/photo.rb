class Photo < ActiveRecord::Base
  validates_presence_of :title, :description, :category, :image
  mount_uploader :file, PhotoUploader
end
