class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.integer :slots
      t.integer :min_age, limit: 2
      t.integer :max_age, limit: 2
      t.string :media
      t.time :start_hour
      t.time :end_hour

      t.timestamps
    end
  end
end
