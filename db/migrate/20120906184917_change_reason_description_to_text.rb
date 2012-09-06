class ChangeReasonDescriptionToText < ActiveRecord::Migration
  def up
    remove_column :reasons, :title
    remove_column :reasons, :url1
    remove_column :reasons, :url2
    remove_column :reasons, :url3
    remove_column :reasons, :question
    
    add_column :reasons, :title, :text
    add_column :reasons, :url1, :text
    add_column :reasons, :url2, :text
    add_column :reasons, :url3, :text
    add_column :reasons, :question, :text
  end

  def down
  end
end
