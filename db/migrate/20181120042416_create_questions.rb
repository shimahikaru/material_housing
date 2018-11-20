class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :questionimg
      t.integer :category
      t.string :name
      t.string :title
      t.text :text
      t.string :email

      t.timestamps
    end
  end
end
