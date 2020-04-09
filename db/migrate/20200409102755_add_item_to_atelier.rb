class AddItemToAtelier < ActiveRecord::Migration[5.2]
  def change
  	add_reference :ateliers, :item, foreign_key: true
  end
end
