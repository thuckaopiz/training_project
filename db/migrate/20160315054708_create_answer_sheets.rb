class CreateAnswerSheets < ActiveRecord::Migration
  def change
    create_table :answer_sheets do |t|
      t.integer :examinee_id
      t.integer :examination_id
      t.float :score

      t.timestamps null: false
    end
  end
end
