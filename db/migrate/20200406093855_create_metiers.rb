class CreateMetiers < ActiveRecord::Migration[5.2]
  def change
    create_table :metiers do |t|
      t.string :name, limit: 150
      t.string :media, limit: 400
      t.text :training
      t.text :explanation

      t.timestamps
    end
  end
end
