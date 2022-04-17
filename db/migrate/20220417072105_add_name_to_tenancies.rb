class AddNameToTenancies < ActiveRecord::Migration[7.0]
  def change
    add_column :tenancies, :name, :text
  end
end
