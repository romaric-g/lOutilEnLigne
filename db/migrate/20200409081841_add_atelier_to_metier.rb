class AddAtelierToMetier < ActiveRecord::Migration[5.2]
  def change
  	add_reference :ateliers, :metier, foreign_key: true
  end
end
