class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|    	
    	t.integer :user_id
			t.integer :character_id
			t.integer :personality_id

      t.timestamps
    end
  end
end

