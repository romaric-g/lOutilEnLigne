class Atelier < ApplicationRecord
	belongs_to :asso
	belongs_to :place
	has_many :items
end
