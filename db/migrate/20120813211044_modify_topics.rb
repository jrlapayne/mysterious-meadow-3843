class ModifyTopics < ActiveRecord::Migration
  def up
    remove_column :topics, :brief_title
    add_column :topics, :thumbnail, :string
  end

  def down
  end
end
