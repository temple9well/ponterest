class AddUserIdToPons < ActiveRecord::Migration
  def change
    add_column :pons, :user_id, :integer
    add_index :pons, :user_id
  end
end
