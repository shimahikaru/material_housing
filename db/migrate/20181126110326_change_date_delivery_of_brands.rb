class ChangeDateDeliveryOfBrands < ActiveRecord::Migration[5.2]
  def change
    change_column :brands, :delivery, :string
  end
end
