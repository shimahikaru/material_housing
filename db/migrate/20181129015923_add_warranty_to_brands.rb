class AddWarrantyToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :warranty, :string
    add_column :brands, :sizeorder, :string
  end
end
