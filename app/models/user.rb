class User < ApplicationRecord
		has_many :tweets 
		has_many :comments, through: :tweets
		has_one :image , as: :imageable

		validates_uniqueness_of :name, :case_sensitive => false

		scope :users_with_images, -> { joins(:image).merge(Image.image_present) }
		scope :users_without_images, -> { joins(:image).merge(Image.image_not_present) }
		
end
