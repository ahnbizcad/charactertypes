class AddIdsToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :show_id, :integer
  	add_column :pictures, :character_id, :integer
  	add_column :pictures, :user_id, :integer
  end
end
