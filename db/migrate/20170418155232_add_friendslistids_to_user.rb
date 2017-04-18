class AddFriendslistidsToUser < ActiveRecord::Migration
  def change
    add_column :users, :friendslist, :integer, array: true, default: []
  end
end
