class CreatePasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :passwords do |t|
      t.text :name
      t.text :user_name
      t.text :password
      
      t.timestamps
    end
  end
end
