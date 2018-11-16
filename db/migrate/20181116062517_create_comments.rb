class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :brand_id, :null => false
      t.string :name
      t.integer :place
      t.string :place_image
      t.text :comment
      t.integer :score
      t.timestamps
    end
  end
end
