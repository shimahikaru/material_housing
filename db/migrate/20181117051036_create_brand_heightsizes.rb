class CreateBrandHeightsizes < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_heightsizes do |t|
      t.references :brand, foreign_key: true
      t.references :heightsize, foreign_key: true

      t.timestamps
    end
  end
end
