class AddProConIntroToReasons < ActiveRecord::Migration
  def change
    add_column :reasons, :is_pro, :boolean
    add_column :reasons, :is_intro, :boolean
  end
end
