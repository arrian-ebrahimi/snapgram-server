class AddNumpicsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :numpics, :integer
  end
end
