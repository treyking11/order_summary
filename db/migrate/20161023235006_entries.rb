class Entries < ActiveRecord::Migration
  def change
    add_column :entries, :imp_quantity, :integer
    add_column :entries, :advertiser_rate, :float
  end
end
