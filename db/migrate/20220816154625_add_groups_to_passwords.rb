class AddGroupsToPasswords < ActiveRecord::Migration[5.2]
  def change
    add_column :passwords, :groups, :string
  end
end
