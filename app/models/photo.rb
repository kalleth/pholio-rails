class Photo < ActiveRecord::Base
  validates_presence_of :title, :description, :image
  attr_accessible :title, :description, :extra, :image
  mount_uploader :image, PhotoUploader
  serialize :meta
  before_save :set_exif, :set_slug
  extend FriendlyId
  friendly_id :title, :use => :slugged, :slug_column => :slugged_title

  def previous  
    self.class.first(:conditions => ['id < ?', self.id], :limit => 1, :order => "id DESC")
  end

  def next
    self.class.first(:conditions => ['id > ?', self.id], :limit => 1, :order => "id ASC")
  end

  def set_exif
    self.meta = image.get_exif.delete_if { |k,v| v.nil? || v.empty? }
  end
end
