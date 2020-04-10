class RemoveReferencesItemsToAtelier < ActiveRecord::Migration[5.2]
  def change
    remove_reference :ateliers, :item, index: true, foreign_key: true
  end
end
