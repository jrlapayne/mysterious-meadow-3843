class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :reason_id
      t.integer :user_id
      t.text :content
      t.string :ancestry
      
      t.timestamps
    end
  end
end
