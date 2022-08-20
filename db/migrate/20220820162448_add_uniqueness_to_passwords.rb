class AddUniquenessToPasswords < ActiveRecord::Migration[5.2]
  def change
    add_index :passwords, :name, unique: true
  end
end
