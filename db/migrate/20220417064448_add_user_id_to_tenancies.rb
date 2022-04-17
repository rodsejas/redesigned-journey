class AddUserIdToTenancies < ActiveRecord::Migration[7.0]
  def change
    add_column :tenancies, :user_id, :integer
  end
end
