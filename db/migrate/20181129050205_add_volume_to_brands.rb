class AddVolumeToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :volume, :string
  end
end
