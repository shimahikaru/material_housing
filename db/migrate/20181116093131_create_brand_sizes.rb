class CreateBrandSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_sizes do |t|
      t.references :brand, foreign_key: true
      t.references :size, foreign_key: true

      t.timestamps
    end
  end
end
