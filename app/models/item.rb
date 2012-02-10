class Item < ActiveRecord::Base
  attr_accessible :name, :one_hundred, :item_notes, :shopping_suggestions, :tags_attributes, :images_attributes
  
  validates :name,  :presence => true
  
  has_many :tags
  has_many :images
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
    
  accepts_nested_attributes_for :images, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
end

