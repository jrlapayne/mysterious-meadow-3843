class AddReasonIdToReasonEdits < ActiveRecord::Migration
  def change
    add_column :reason_edits, :reason_id, :integer
  end
end
