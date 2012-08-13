class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.integer :topic_id
      t.string :title
      t.text :description
      t.string :url1
      t.string :url2
      t.string :url3
      t.integer :score, default: 0
      t.boolean :is_approved, default: false
      
      t.timestamps
    end
  end
end
