class AddTextoneToEditors < ActiveRecord::Migration[5.2]
  def change
    add_column :editors, :textone, :text
    add_column :editors, :imageone, :string
    add_column :editors, :texttwo, :text
    add_column :editors, :imagetwo, :string
    add_column :editors, :textthree, :text
    add_column :editors, :imagethree, :string
    add_column :editors, :textfour, :text
    add_column :editors, :imagefour, :string
    add_column :editors, :textfive, :text
  end
end
