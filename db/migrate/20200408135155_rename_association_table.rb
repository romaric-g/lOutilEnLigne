class RenameAssociationTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :associations, :asso
  end
end
