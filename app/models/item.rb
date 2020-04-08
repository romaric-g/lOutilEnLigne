class Item < ApplicationRecord
	has_and_belongs_to_many :tools
	belongs_to :metier
end
