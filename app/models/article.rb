class Article < ApplicationRecord
	validates :title, presence: true,
		length: { minimum: 5 }
	validates :status, presence: true

	default_scope {where(status: '1')}
	scope :status_active, -> {where(status: '1')}
end
