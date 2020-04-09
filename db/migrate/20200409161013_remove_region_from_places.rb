class RemoveRegionFromPlaces < ActiveRecord::Migration[5.2]
  def change
  	change_table :places do |t|
  		t.remove :region
	end
  end
end
