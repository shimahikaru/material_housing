class AddDeliveryCountToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :delivery, :integer
  end
end
