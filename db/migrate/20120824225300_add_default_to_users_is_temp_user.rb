class AddDefaultToUsersIsTempUser < ActiveRecord::Migration
  def change
    change_column :users, :is_temp_user, :boolean, default: true
  end
end
