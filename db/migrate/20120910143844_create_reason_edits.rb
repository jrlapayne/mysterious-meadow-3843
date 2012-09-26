class CreateReasonEdits < ActiveRecord::Migration
  def change
    create_table :reason_edits do |t|
      t.integer  :topic_id
      t.text     :title
      t.text     :description
      t.text     :url1
      t.text     :url2
      t.text     :url3
      t.text     :question
      t.string   :correct
      t.string   :wrong1
      t.string   :wrong2
      t.string   :wrong3
      t.string   :wrong4
      t.boolean  :is_pro
      t.boolean  :is_intro
      t.text     :url
      
      t.timestamps
    end
  end
end
