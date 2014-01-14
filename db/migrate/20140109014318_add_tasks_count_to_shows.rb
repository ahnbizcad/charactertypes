class AddTasksCountToShows < ActiveRecord::Migration
  def change
  	add_column :shows, :characters_count, :integer, :default => 0

  	Show.reset_column_information  
    Show.find_each do |s|  
      Show.reset_counters s.id, :characters
    end
  end
end
