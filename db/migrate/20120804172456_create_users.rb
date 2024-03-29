class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :provider
      t.string :uid
      t.string :token
      t.boolean :is_admin, default: false
      t.boolean :is_temp_user, default: false
      
      t.timestamps
    end
  end
end
