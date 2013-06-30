# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091019202308) do

  create_table "client_assignments", :force => true do |t|
    t.integer  "client_id"
    t.integer  "service_group_id"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.text     "story"
    t.string   "image_url"
    t.text     "notes"
    t.string   "short_name"
    t.string   "ticker"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.string   "logo_url"
    t.boolean  "featured"
    t.string   "testamonial"
    t.string   "story_url"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.text     "message"
    t.string   "referred_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.string   "contributor"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "summary"
    t.boolean  "read_more_link"
    t.text     "resources"
    t.boolean  "published"
  end

  create_table "service_assignments", :force => true do |t|
    t.integer  "service_id"
    t.integer  "service_grou_id"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

end
