class AddListoffriendsToUser < ActiveRecord::Migration
  def change
    add_column :users, :listoffriends, :string, array: true, default: []
  end
end
