class ChangeEndDateToBeDateInTenancies < ActiveRecord::Migration[7.0]
  def up
    change_column :tenancies, :end_date, :date, using: 'end_date::date'
  end

  def down
    change_column :tenancies, :end_date, :text
  end
end
