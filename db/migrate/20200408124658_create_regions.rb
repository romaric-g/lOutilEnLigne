class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.integer :num, limit: 3
      t.string :uppername
      t.string :displayname

      t.timestamps
    end
  end
end
