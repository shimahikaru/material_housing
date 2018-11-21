class CreateBrandOthersizes < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_othersizes do |t|
      t.references :brand, foreign_key: true
      t.references :othersize, foreign_key: true

      t.timestamps
    end
  end
end
