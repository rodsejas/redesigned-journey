class ChangeStartDateToBeDateInTenancies < ActiveRecord::Migration[7.0]
  def up
    change_column :tenancies, :start_date, :date, using: 'start_date::date'
  end

  def down
    change_column :tenancies, :start_date, :text
  end

end
