class CreateShogunContacts < ActiveRecord::Migration
  def change
    create_table :shogun_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false

      add_foreign_key :shogun_contacts_contacts, :shogun_users
    end
  end
end
