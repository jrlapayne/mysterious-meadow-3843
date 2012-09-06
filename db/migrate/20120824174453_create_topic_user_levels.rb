class CreateTopicUserLevels < ActiveRecord::Migration
  def change
    create_table :topic_user_levels do |t|
      t.integer :topic_id
      t.integer :user_id
      t.integer :level, default: 0
      t.integer :points, default: 0
      
      t.timestamps
    end
  end
end
