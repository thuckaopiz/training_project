class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :role_id
      t.string :full_name
      t.string :email

      t.timestamps null: false
    end
  end
end
