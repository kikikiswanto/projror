class Article < ApplicationRecord
	validates :title, presence: true,
		length: { minimum: 5 }
	validates :status, presence: true
end
