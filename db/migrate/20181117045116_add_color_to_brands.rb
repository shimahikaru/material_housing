class AddColorToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :color, :integer
  end
end
