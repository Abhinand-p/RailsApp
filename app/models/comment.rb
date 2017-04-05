class Comment < ApplicationRecord
  belongs_to :user 
  belongs_to :tweet
  has_one :image, as: :imageable

  	scope :comments_with_images, -> { joins(:image).merge(Image.image_present) }
	scope :comments_without_images, -> { joins(:image).merge(Image.image_not_present) }

end
