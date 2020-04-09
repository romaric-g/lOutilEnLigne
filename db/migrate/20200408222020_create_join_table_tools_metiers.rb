class CreateJoinTableToolsMetiers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tools, :metiers do |t|
      t.index [:tool_id, :metier_id]
      t.index [:metier_id, :tool_id]
    end
  end
end
