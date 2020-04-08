class Metier < ApplicationRecord
	has_and_belongs_to_many :tools
	has_and_belongs_to_many :events
	has_many :user
	has_many :items
	has_many :ateliers
end
