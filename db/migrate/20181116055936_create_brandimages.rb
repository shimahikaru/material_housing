class CreateBrandimages < ActiveRecord::Migration[5.2]
  def change
    create_table :brandimages do |t|
      t.integer :brand_id, :null => false
      t.string :image
      t.string :comment
      t.timestamps
    end
  end
end
