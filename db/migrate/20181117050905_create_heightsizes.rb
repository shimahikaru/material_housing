class CreateHeightsizes < ActiveRecord::Migration[5.2]
  def change
    create_table :heightsizes do |t|
      t.string :height
      t.timestamps
    end
  end
end
