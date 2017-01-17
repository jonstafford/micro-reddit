class AddUserIdAndPostIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :user_id, :string
    add_index :comments, :user_id
    add_column :comments, :post_id, :string
    add_index :comments, :post_id
  end
end
