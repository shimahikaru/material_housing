class ChangeDatatypeColorOfBrands < ActiveRecord::Migration[5.2]
  def change
    change_column :brands, :color, :string
  end
end
