class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.integer :resource_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
