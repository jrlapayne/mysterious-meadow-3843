class CreateGlobalLevels < ActiveRecord::Migration
  def change
    create_table :global_levels do |t|
      t.integer :level
      t.integer :xp_req
      
      t.timestamps
    end
  end
end
