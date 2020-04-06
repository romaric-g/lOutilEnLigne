class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.float :lat
      t.float :long
      t.string :phone
      t.string :region
      t.text :infos

      t.timestamps
    end
  end
end
