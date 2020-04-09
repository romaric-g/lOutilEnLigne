class Item < ApplicationRecord
	has_and_belongs_to_many :metiers
	belongs_to :atelier
end
