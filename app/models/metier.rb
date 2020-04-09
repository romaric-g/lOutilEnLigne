class Metier < ApplicationRecord
	has_and_belongs_to_many :tools
	has_and_belongs_to_many :items
	has_many :users
	has_many :items
	has_many :ateliers
end
