class Item < ActiveRecord::Base
  attr_accessible :image, :name, :one_hundred, :item_notes, :shopping_suggestions, :tags_attributes  
  
  validates :name,  :presence => true
  
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  mount_uploader :image, ImageUploader
end

