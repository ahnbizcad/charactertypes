class AddSlabelToPersonalities < ActiveRecord::Migration
  def change
    add_column :personalities, :slabel, :string
  end
end
