class Tweet < ApplicationRecord
  	belongs_to :user , -> { where.not("name is NULL")}
  	has_many :comments, dependent: :destroy
  	has_many :images, as: :imageable

	scope :tweets_with_images, -> { joins(:images).merge(Image.image_present) }
	scope :tweets_without_images, -> { joins(:images).merge(Image.image_not_present) }
 
end
