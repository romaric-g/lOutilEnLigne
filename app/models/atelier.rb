class Atelier < ApplicationRecord
	belongs_to :asso
	belongs_to :place
	belongs_to :metier
	has_many :items
end
