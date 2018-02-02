class CreateTagResources < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_resources do |t|
    	t.integer :resource_id
    	t.integer :tag_id

      t.timestamps
    end
  end
end
