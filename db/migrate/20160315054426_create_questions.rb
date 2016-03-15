class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :examination_id
      t.integer :question_type
      t.string :content

      t.timestamps null: false
    end
  end
end
