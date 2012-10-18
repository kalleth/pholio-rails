class Photo < ActiveRecord::Base
  validates_presence_of :title, :description, :image
  attr_accessible :title, :description, :extra, :image
  mount_uploader :image, PhotoUploader
end
