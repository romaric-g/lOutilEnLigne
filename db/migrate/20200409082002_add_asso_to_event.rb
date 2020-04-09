class AddAssoToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_reference :events, :asso, foreign_key: true
  end
end
