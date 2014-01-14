class DropPersonalityTypesTable < ActiveRecord::Migration
  def change
  	drop_table :personality_types
  end
end
