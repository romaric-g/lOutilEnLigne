class AddMetierToUser < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :metier, foreign_key: true
  end
end
