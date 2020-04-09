class CreateJoinTableToolsItems < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :tools, :items do |t|
      t.index [:tool_id, :item_id]
      t.index [:item_id, :tool_id]
    end
  end
end
