class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :option_id
      t.integer :answer_sheet_id

      t.timestamps null: false
    end
  end
end
