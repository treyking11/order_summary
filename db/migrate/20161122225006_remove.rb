class Remove < ActiveRecord::Migration
  def change
      remove_column :entries, :address, :text
  end
end
