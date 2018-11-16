class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :subtitle
      t.text :text
      t.timestamps
    end
  end
end
