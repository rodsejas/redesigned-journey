class AddSuburbBedroomsBathroomsCarspacesToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :suburb, :text
    add_column :properties, :bedrooms, :integer
    add_column :properties, :bathrooms, :integer
    add_column :properties, :carspaces, :integer
  end
end
