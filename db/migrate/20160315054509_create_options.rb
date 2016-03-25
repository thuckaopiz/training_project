class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :question_id
      t.boolean :correct, default: false
      t.text :content

      t.timestamps null: false
    end
  end
end
