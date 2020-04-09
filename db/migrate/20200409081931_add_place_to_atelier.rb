class AddPlaceToAtelier < ActiveRecord::Migration[5.2]
  def change
  	add_reference :ateliers, :place, foreign_key: true
  end
end
