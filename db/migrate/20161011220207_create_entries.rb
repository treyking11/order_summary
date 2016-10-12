class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
