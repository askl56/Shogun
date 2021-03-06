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

ActiveRecord::Schema.define(version: 20_150_429_040_911) do
  create_table 'shogun_contacts_contacts', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'company'
    t.string 'email'
    t.string 'phone'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_index 'shogun_contacts_contacts', ['user_id'], name: 'index_shogun_contacts_contacts_on_user_id'

  create_table 'shogun_tasks_tasks', force: :cascade do |t|
    t.string 'title'
    t.text 'content'
    t.integer 'user_id'
    t.integer 'contact_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_index 'shogun_tasks_tasks', ['contact_id'], name: 'index_shogun_tasks_tasks_on_contact_id'
  add_index 'shogun_tasks_tasks', ['user_id'], name: 'index_shogun_tasks_tasks_on_user_id'

  create_table 'shogun_users', force: :cascade do |t|
    t.string 'email',                  default: '', null: false
    t.string 'encrypted_password',     default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.boolean 'admin'
  end

  add_index 'shogun_users', ['email'], name: 'index_shogun_users_on_email', unique: true
  add_index 'shogun_users', ['reset_password_token'], name: 'index_shogun_users_on_reset_password_token', unique: true
end
