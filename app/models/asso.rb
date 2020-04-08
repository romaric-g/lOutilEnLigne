class Asso < ApplicationRecord
	has_one :user
	has_many :events
end
