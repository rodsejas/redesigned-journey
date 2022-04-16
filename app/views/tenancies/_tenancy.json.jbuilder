json.extract! tenancy, :id, :start_date, :end_date, :contractual_basis, :has_pets, :bond_amount, :pays_water, :pays_gas, :pays_electricity, :weekly_rent, :created_at, :updated_at
json.url tenancy_url(tenancy, format: :json)
