class AddPoi < ActiveRecord::Migration
  def change
    add_column :entries, :geofence_poi, :boolean, default: false
  end
end
