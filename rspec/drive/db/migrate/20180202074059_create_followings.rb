class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|

      t.timestamps
    end
  end
end
