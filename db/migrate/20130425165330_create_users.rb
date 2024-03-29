class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :user_name, :null => false, :unique => true
      t.string :email, :null => false, :unique => true
      t.string :password_hash, :null => false
      t.timestamps
    end
  end
end
