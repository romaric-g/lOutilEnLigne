class Asso < ApplicationRecord
	belongs_to :region
	has_many :events
	has_many :ateliers
end
