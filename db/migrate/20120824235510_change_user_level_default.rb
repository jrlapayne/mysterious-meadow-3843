class ChangeUserLevelDefault < ActiveRecord::Migration
  def up
    change_column :users, :level, :integer, default: 1
  end

  def down
  end
end
