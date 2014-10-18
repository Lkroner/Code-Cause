class AddPictures < ActiveRecord::Migration
  def change
    add_column :users, :picture, :string

    add_column :causes, :picture, :string
  end
end
