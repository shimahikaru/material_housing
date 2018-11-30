class RenameTypeColumnToPrices < ActiveRecord::Migration[5.2]
  def change
    rename_column :prices, :type, :modeltype
  end
end
