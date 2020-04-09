class RemoveRegionFromAsso < ActiveRecord::Migration[5.2]
  def change
    remove_reference :assos, :region, foreign_key: true
    add_reference :assos, :departement, foreign_key: true
  end
end
