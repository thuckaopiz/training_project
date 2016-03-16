class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :question_type
      t.string :content
      t.string :subject_id

      t.timestamps null: false
    end
  end
end
