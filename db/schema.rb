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

ActiveRecord::Schema.define(version: 20141017225059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "causes", force: true do |t|
    t.string   "name",                limit: 50,                  null: false
    t.string   "description",         limit: 400,                 null: false
    t.string   "help_needed",         limit: 400,                 null: false
    t.boolean  "web_design",                      default: false
    t.boolean  "web_development",                 default: false
    t.boolean  "ios_development",                 default: false
    t.boolean  "android_development",             default: false
    t.boolean  "data_analysis",                   default: false
    t.boolean  "algorithm_design",                default: false
    t.boolean  "ruby_on_rails",                   default: false
    t.boolean  "django",                          default: false
    t.boolean  "html_css",                        default: false
    t.boolean  "ruby",                            default: false
    t.boolean  "python",                          default: false
    t.boolean  "javascript",                      default: false
    t.boolean  "java",                            default: false
    t.boolean  "cpp",                             default: false
    t.boolean  "c",                               default: false
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "causes_coders", force: true do |t|
    t.integer  "cause_id"
    t.integer  "coder_id"
    t.boolean  "confirmed",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "causes_do_gooders", force: true do |t|
    t.integer  "cause_id"
    t.integer  "do_gooder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coders", force: true do |t|
    t.string   "name",                limit: 50,                  null: false
    t.string   "email",               limit: 70,                  null: false
    t.string   "about",               limit: 400
    t.boolean  "web_design",                      default: false
    t.boolean  "web_development",                 default: false
    t.boolean  "ios_development",                 default: false
    t.boolean  "android_development",             default: false
    t.boolean  "data_analysis",                   default: false
    t.boolean  "algorithm_design",                default: false
    t.boolean  "ruby_on_rails",                   default: false
    t.boolean  "django",                          default: false
    t.boolean  "html_css",                        default: false
    t.boolean  "ruby",                            default: false
    t.boolean  "python",                          default: false
    t.boolean  "javascript",                      default: false
    t.boolean  "java",                            default: false
    t.boolean  "cpp",                             default: false
    t.boolean  "c",                               default: false
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "do_gooders", force: true do |t|
    t.string   "name",       limit: 50,  null: false
    t.string   "email",      limit: 70,  null: false
    t.string   "about",      limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
