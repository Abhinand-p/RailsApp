class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  
  scope :image_present, -> {  where ("location is NOT NULL")  }
  scope :image_not_present, -> {    where.not ("location is NOT NULL")    }
	
end
