class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :first_name
      t.string :last_name
      t.boolean :admin, default: false
      t.string :booking_link

      t.timestamps null: false
    end
    add_index :users, :email,                unique: true
  end
end
