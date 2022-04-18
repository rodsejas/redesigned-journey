class ChangeEndDateToBeTextInTenancies < ActiveRecord::Migration[7.0]
  def up
    change_column :tenancies, :end_date, :text
  end

  def down
    change_column :tenancies, :end_date, :integer
  end

end
