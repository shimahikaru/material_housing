class AddImpressionsCountToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :impressions_count, :integer, default: 0
  end
end
