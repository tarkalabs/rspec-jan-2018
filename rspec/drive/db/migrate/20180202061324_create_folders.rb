class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
