class RenameJoinTableCauseUsers < ActiveRecord::Migration
  def change
    rename_table :causes_users, :cause_users
  end
end
