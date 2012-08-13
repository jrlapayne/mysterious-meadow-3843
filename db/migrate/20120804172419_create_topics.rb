class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :brief_title
      t.string :title
      t.text :description
      t.integer :score, default: 0
      t.boolean :is_approved, default: false
      
      t.timestamps
    end
  end
end
