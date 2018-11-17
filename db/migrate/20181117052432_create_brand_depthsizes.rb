class CreateBrandDepthsizes < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_depthsizes do |t|
      t.references :brand, foreign_key: true
      t.references :depthsize, foreign_key: true

      t.timestamps
    end
  end
end
