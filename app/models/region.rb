class Region < ApplicationRecord

	has_many :departements

	def to_s
		displayname
	end
end
