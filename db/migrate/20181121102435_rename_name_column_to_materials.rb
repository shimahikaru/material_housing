class RenameNameColumnToMaterials < ActiveRecord::Migration[5.2]
  def change
    rename_column :materials, :name, :materialname
  end
end
