class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :users, :post_total
  end
end
