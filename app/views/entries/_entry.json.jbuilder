json.extract! entry, :id, :created_at, :updated_at, :name, :description, :start_date, :end_date, :created_at, :updated_at, :imp_quantity, :advertiser_rate, :platforms, :creative_types, :audiences, :states, :metros, :zip_codes, :address, :content_cats, :carriers, :operating_sys, :agency_name, :advertiser_name, :advertiser_url, :audiences_prem
json.url entry_url(entry, format: :json)
