class CreateBrandKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_keywords do |t|
      t.references :brand, foreign_key: true
      t.references :keyword, foreign_key: true

      t.timestamps
    end
  end
end
