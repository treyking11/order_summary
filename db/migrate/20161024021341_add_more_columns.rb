class AddMoreColumns < ActiveRecord::Migration
  def change
    add_column :entries, :platforms, :text
    add_column :entries, :creative_types, :text
    add_column :entries, :audiences, :text
    add_column :entries, :states, :text
    add_column :entries, :metros, :text
    add_column :entries, :zip_codes, :text
    add_column :entries, :address, :text
    add_column :entries, :content_cats, :text
    add_column :entries, :carriers, :text
    add_column :entries, :operating_sys, :text
  end
end
