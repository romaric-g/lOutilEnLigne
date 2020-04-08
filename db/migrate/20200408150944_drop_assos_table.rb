class DropAssosTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :assos
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
