class CreateJoinTableMetiersItems < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :metiers, :items do |t|
      t.index [:item_id, :metier_id]
      t.index [:metier_id, :item_id]
    end
  end
end
