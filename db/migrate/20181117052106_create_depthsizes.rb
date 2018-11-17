class CreateDepthsizes < ActiveRecord::Migration[5.2]
  def change
    create_table :depthsizes do |t|
      t.string :depth
      t.timestamps
    end
  end
end
