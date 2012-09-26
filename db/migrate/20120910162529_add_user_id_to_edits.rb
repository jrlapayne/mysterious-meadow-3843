class AddUserIdToEdits < ActiveRecord::Migration
  def change
    add_column :reason_edits, :user_id, :integer
  end
end
