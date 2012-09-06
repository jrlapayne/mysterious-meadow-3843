class AddUrlsToReasons < ActiveRecord::Migration
  def change
    add_column :reasons, :url, :text
  end
end
