class CorrectCommentsBody < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :bpdy, :text
    add_column :comments, :body, :text, null: false
  end
end
