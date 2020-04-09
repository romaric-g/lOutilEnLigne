class AddUserToAsso < ActiveRecord::Migration[5.2]
  def change
  	add_reference :assos, :user, foreign_key: true
  end
end
