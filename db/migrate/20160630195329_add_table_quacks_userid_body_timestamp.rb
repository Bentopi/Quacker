class AddTableQuacksUseridBodyTimestamp < ActiveRecord::Migration
  def change
    create_table :quacks do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
