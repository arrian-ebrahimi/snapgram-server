class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :varchar
  end
end
