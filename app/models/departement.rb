class Departement < ApplicationRecord
	belongs_to :region

	def to_s
		numero
	end
end
