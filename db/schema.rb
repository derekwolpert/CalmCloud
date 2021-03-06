# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_10_181424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.integer "track_id", null: false
    t.integer "user_id", null: false
    t.integer "parent_comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string "favorited_type"
    t.bigint "favorited_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.string "subscribed_type"
    t.bigint "subscribed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscribed_type", "subscribed_id"], name: "index_subscriptions_on_subscribed_type_and_subscribed_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_name"], name: "index_tags_on_tag_name", unique: true
  end

  create_table "tracks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.integer "track_length", null: false
    t.integer "play_count", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tag_id"
    t.index ["tag_id"], name: "index_tracks_on_tag_id"
    t.index ["user_id", "title"], name: "index_tracks_on_user_id_and_title", unique: true
    t.index ["user_id"], name: "index_tracks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "display_name", null: false
    t.text "biography"
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
