class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.references :folder, foreign_key: true
      t.string :name
      t.string :document_type
      t.integer :size

      t.timestamps
    end
  end
end
