class AddFriendsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friends, :integer
  end
end
