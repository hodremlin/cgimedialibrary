# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180711134929) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "banners", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.integer  "vertical_id"
    t.string   "thumbnail"
    t.string   "banner"
    t.string   "presentation_zone_url"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favorited_id"
    t.string   "favorited_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "favorites", ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "featureds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logos", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.integer  "vertical_id"
    t.string   "thumbnail"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "logo"
    t.string   "presentation_zone_url"
  end

  create_table "maps", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.integer  "vertical_id"
    t.string   "thumbnail"
    t.string   "map"
    t.string   "presentation_zone_url"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "published_at"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "reviewtubes", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.string   "reviewtube"
    t.string   "playlist_1"
    t.string   "playlist_2"
    t.string   "thumbnail"
    t.integer  "vertical_id"
    t.boolean  "featured"
    t.string   "presentation_zone_url"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "mobile_video"
  end

  create_table "socials", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.integer  "vertical_id"
    t.string   "thumbnail"
    t.string   "social_post"
    t.string   "presentation_zone_url"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["context"], name: "index_taggings_on_context"
  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  add_index "taggings", ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id"
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type"
  add_index "taggings", ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
  add_index "taggings", ["tagger_id"], name: "index_taggings_on_tagger_id"

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["admin"], name: "index_users_on_admin"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "vertical_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verticals", force: :cascade do |t|
    t.string   "title"
    t.integer  "vertical_category_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "video_players", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.string   "video"
    t.string   "thumbnail"
    t.integer  "vertical_id"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "presentation_zone_url"
    t.string   "mobile_video"
  end

  create_table "websites", force: :cascade do |t|
    t.string   "title"
    t.datetime "published_at"
    t.string   "business_name"
    t.integer  "pnotes_id"
    t.string   "thumbnail"
    t.string   "web_url"
    t.integer  "vertical_id"
    t.boolean  "featured"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "website"
    t.string   "presentation_zone_url"
  end

end
