class CreateBrandMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_materials do |t|
      t.references :brand, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
