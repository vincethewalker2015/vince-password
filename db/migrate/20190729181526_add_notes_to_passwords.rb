class AddNotesToPasswords < ActiveRecord::Migration[5.2]
  def change
    add_column :passwords, :notes, :text
  end
end
