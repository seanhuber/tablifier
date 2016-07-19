class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "email_address"
      t.string   "encrypted_password"
      t.integer  "sign_in_count"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "middle_name"
      t.date     "birth_date"
      t.boolean  "registered"
      t.boolean  "admin"
    end
  end
end
