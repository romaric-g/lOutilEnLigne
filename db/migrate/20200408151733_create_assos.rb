class CreateAssos < ActiveRecord::Migration[5.2]
  def change
    create_table :assos do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city
      t.float :lat
      t.float :long
      t.string :phone
      t.string :email
      t.integer :members

      t.timestamps
    end
  end
end
