class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :question_id
      t.boolean :correct
      t.text :content

      t.timestamps null: false
    end
  end
end
