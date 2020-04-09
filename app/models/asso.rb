class Asso < ApplicationRecord
	belongs_to :departement
	has_many :events
	has_many :ateliers
end
