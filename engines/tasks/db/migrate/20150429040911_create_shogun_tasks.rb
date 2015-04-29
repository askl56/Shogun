class CreateShogunTasks < ActiveRecord::Migration
 def change
   create_table :shogun_tasks_tasks do |t| # <- here
     t.string :title
     t.text :content
     t.references :user, index: true
     t.references :contact, index: true
     t.timestamps null: false
   end
   add_foreign_key :shogun_tasks_tasks, :shogun_users # <- here
   add_foreign_key :shogun_tasks_tasks, :shogun_contacts_contacts # <- here
 end
end
