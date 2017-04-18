class AddFriendslistToUser < ActiveRecord::Migration
  def change
    add_column :users, :friendslist, :string, array: true, default: []
  end
end
