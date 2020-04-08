class AddRegionToAssociations < ActiveRecord::Migration[5.2]
  def change
    add_column :associations, :region, :string
  end
end
