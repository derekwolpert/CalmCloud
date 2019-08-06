class RemoveUsersColumnsAgeGender < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :age
    remove_column :users, :gender
  end
end
