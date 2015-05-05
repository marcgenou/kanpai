class Experience < ActiveRecord::Base
	validates :title, :category, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for gif, jpg or png image.'}
	#attr_accessible :address, :latitude, :logitude
	geocoded_by :address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_time
	private
	# ensure that there are no line items referencing this experience
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
