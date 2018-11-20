class CreateEditors < ActiveRecord::Migration[5.2]
  def change
    create_table :editors do |t|
      t.string :title
      t.text :description
      t.integer :category
      t.string :avatar

      t.timestamps
    end
  end
end
