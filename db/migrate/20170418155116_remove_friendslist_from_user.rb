class RemoveFriendslistFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :friendslist
  end
end
