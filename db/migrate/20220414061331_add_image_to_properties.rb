class AddImageToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :image, :text
  end
end
