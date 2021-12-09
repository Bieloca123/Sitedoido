class AddUserIdToFriendsdbs < ActiveRecord::Migration[5.2]
  def change
    add_column :friendsdbs, :user_id, :integer
    add_index :friendsdbs, :user_id
  end
end
