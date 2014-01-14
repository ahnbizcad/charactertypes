class AddStuffToUsers < ActiveRecord::Migration
  def change
  		remove_column :users, :name, :string
  		add_column :users, :user_name , :string
  		add_column :users, :password , :string
  		add_column :users, :email ,:string
  		
  end
end
