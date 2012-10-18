class Photo < ActiveRecord::Base
  validates_presence_of :title, :description, :image
  attr_accessible :title, :description, :extra, :image
  mount_uploader :image, PhotoUploader
  serialize :meta
  before_save :set_exif

  def set_exif
    self.meta = image.get_exif
  end
end
