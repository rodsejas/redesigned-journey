class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.text :first_name
      t.text :last_name
      t.text :email_address
      t.integer :phone_number
      t.integer :property_id
      t.integer :tenancy_id

      t.timestamps
    end
  end
end
