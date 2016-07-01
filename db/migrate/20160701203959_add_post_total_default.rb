class AddPostTotalDefault < ActiveRecord::Migration
  def change
    change_column :users, :post_total, :integer, default: 0
  end
end
