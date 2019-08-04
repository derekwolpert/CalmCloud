class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|

      t.integer :user_id, null: false
      

      t.timestamps
    end
    add_index :tracks, :user_id
  end
end




class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :display_name, null: false
      t.text :biography
      t.integer :age
      t.string :gender
      t.string :country
      t.string :city
      t.string :profile_pic_url
      t.string :cover_pic_url
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end