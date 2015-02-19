class Experience < ActiveRecord::Base
	validates :title, :category, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for gif, jpg or png image.'}
	#attr_accessible :address, :latitude, :logitude
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
