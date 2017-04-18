class RemoveFriendslist2FromUser < ActiveRecord::Migration
  def change
    remove_column :users, :friendslist
  end
end
