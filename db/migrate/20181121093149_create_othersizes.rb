class CreateOthersizes < ActiveRecord::Migration[5.2]
  def change
    create_table :othersizes do |t|
      t.string :other
      t.timestamps
    end
  end
end
