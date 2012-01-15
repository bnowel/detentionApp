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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111128060911) do

  create_table "consequences", :force => true do |t|
    t.integer  "detention_count"
    t.string   "description"
    t.string   "notification_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consequences_notices", :id => false, :force => true do |t|
    t.integer  "consequence_id"
    t.integer  "notice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detentions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detentions", ["student_id"], :name => "index_detentions_on_student_id"
  add_index "detentions", ["teacher_id"], :name => "index_detentions_on_teacher_id"

  create_table "notices", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
