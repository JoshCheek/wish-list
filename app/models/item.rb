class Item < ActiveRecord::Base
  attr_accessible :image
  validates :name,  :presence => true
  
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  mount_uploader :image, ImageUploader
end

