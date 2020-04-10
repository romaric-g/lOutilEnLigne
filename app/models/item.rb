class Item < ApplicationRecord
	has_and_belongs_to_many :metiers
	has_many :ateliers
end
