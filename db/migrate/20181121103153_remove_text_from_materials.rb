class RemoveTextFromMaterials < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :text, :text
  end
end
