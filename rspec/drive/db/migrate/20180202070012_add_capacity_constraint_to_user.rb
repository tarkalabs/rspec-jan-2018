class AddCapacityConstraintToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :max_capacity, :integer
    add_column :users, :max_documents, :integer
  end
end
