class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :topic_id
      t.integer :reason_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
