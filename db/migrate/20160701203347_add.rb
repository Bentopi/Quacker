class Add < ActiveRecord::Migration
  def change
     add_column :users, :post_total, :integer
  end
end
