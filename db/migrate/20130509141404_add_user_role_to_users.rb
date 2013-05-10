class AddUserRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_role, :string
  end
end
