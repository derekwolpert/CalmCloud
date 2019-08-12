class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :track_id, null: false
      t.integer :user_id, null: false
      t.integer :parent_comment_id
      t.text :bpdy, null: false
      t.timestamps
    end
  end
end
