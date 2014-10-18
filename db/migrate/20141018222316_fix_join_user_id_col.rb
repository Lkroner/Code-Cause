class FixJoinUserIdCol < ActiveRecord::Migration
  def change
    rename_column :cause_users, :coder_id, :user_id
  end
end
