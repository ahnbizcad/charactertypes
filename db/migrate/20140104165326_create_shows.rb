class CreateShows < ActiveRecord::Migration
  def change
  	drop_table :shows
    create_table :shows do |t|
    	t.string :title
    	t.integer :year
    	t.string :show_type

      t.timestamps
    end
  end
end
