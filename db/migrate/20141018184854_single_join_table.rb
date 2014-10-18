class SingleJoinTable < ActiveRecord::Migration
  def change
    drop_table :causes_do_gooders

    rename_table :causes_coders, :causes_users
  end
end
