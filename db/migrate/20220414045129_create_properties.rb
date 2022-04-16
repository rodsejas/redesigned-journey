class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.text :street_address
      t.text :property_type
      t.integer :user_id
      t.integer :postcode
      t.text :state
      t.text :country
      t.integer :lot_size

      t.timestamps
    end
  end
end
