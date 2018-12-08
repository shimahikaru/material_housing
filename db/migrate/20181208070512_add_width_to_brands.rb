class AddWidthToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :width, :string
    add_column :brands, :depth, :string
    add_column :brands, :height, :string
  end
end
