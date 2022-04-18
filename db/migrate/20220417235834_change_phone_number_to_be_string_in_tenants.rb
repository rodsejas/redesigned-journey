class ChangePhoneNumberToBeStringInTenants < ActiveRecord::Migration[7.0]
  def up
    change_column :tenants, :phone_number, :string
  end

  def down
    change_column :tenants, :phone_number, :string
  end
  
end
