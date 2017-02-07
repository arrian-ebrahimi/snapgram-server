class User < ActiveRecord::Migration
  def change
    add_column :user_name, :password, :followers, :following, :num_pics
  end
end
