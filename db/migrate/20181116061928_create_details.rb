class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :brand_id, :null => false
      t.string :photo
      t.string :title
      t.text :text
      t.timestamps
    end
  end
end
