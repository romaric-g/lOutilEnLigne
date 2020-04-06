class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :media
      t.text :description
      t.time :build_time

      t.timestamps
    end
  end
end
