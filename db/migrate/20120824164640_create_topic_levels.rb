class CreateTopicLevels < ActiveRecord::Migration
  def change
    create_table :topic_levels do |t|
      t.integer :level
      t.integer :xp_req
      
      t.timestamps
    end
  end
end
