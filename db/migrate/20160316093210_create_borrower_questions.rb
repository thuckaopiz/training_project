class CreateBorrowerQuestions < ActiveRecord::Migration
  def change
    create_table :borrower_questions do |t|
      t.integer :borrower_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
