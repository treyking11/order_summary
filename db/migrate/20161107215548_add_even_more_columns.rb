class AddEvenMoreColumns < ActiveRecord::Migration
  def change
    add_column :entries, :agency_name, :text
    add_column :entries, :advertiser_name, :text
    add_column :entries, :advertiser_url, :text
    add_column :entries, :audiences_prem, :text
  end
end
