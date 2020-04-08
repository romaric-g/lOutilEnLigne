class AddRegionToAssos < ActiveRecord::Migration[5.2]
  def change
    add_reference :assos, :region, foreign_key: true
  end
end
