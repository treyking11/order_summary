class RemoveTimes < ActiveRecord::Migration
  def change
    remove_column :entries, :start_time, :time
    remove_column :entries, :end_time, :time
  end
end
