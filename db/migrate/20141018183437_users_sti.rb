class UsersSti < ActiveRecord::Migration
  def change
    drop_table :do_gooders

    change_table :coders do |t|
      t.string :type, null: false
    end

    rename_table :coders, :users
  end
end
