class ChangeRateType < ActiveRecord::Migration
  def up
    change_column :entries, :advertiser_rate, :decimal
  end

  def down
    change_column :entries, :advertiser_rate, :float
  end
end
