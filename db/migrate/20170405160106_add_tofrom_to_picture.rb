class AddTofromToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :user_from, :integer
    add_column :pictures, :user_to, :integer
  end
end
