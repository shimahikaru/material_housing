class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :money
      t.string :type
      t.integer :brand_id
      t.timestamps
    end
  end
end
