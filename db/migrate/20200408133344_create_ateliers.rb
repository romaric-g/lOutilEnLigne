class CreateAteliers < ActiveRecord::Migration[5.2]
  def change
    create_table :ateliers do |t|
      t.string :name
      t.text :description
      t.integer :slots
      t.integer :min_age
      t.integer :max_age
      t.text :media

      t.timestamps
    end
  end
end
