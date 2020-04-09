class AddRegionToPlaces < ActiveRecord::Migration[5.2]
  def change
  	add_reference :places, :region, foreign_key: true
  end
end
