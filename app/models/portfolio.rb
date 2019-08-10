class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/600x300"
		self.thumb_image ||= "https://place-hold.it/300x200"
	end
end
