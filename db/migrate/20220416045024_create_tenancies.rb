class CreateTenancies < ActiveRecord::Migration[7.0]
  def change
    create_table :tenancies do |t|
      t.integer :start_date
      t.integer :end_date
      t.text :contractual_basis
      t.boolean :has_pets
      t.integer :bond_amount
      t.text :pays_water
      t.text :pays_gas
      t.text :pays_electricity
      t.integer :weekly_rent

      t.timestamps
    end
  end
end
