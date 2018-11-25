class AddCompletionToBrands < ActiveRecord::Migration[5.2]
  def change
    add_column :brands, :completion, :date
  end
end
