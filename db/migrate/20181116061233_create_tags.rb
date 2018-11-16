class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.integer :brand_id, :null => false
      t.string :about, :null => false
      t.timestamps
    end
  end
end
