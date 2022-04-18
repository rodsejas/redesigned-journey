class ChangeStartDateToBeTextInTenancies < ActiveRecord::Migration[7.0]
  def up
    change_column :tenancies, :start_date, :text
  end

  def down
    change_column :tenancies, :start_date, :integer
  end

end
