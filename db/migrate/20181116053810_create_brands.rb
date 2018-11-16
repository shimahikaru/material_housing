class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name, :null => false
      t.integer :company_id, :null => false
      t.integer :location, :null => false
      t.text :text
      t.integer :grade, :null => false
      t.string :price
      t.string :pagelink
      t.timestamps
    end
  end
end
