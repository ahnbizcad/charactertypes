class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
    	t.string :stype
    	t.string :mtype
    	t.string :slabel
    	t.string :quadra
    	t.string :cf1
    	t.string :cf2
    	t.string :cf3
    	t.string :cf4
    	t.string :cf5
    	t.string :cf6
    	t.string :cf7
    	t.string :cf8
      
      t.timestamps

      add_column :personality, :slabel, :string
    end
  end
end
