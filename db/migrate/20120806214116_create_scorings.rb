class CreateScorings < ActiveRecord::Migration
  def change
    create_table :scorings do |t|
      t.integer :user_id
      t.integer :topic_id
      t.integer :reason_id
      t.integer :vote
      
      t.timestamps
    end
  end
end
