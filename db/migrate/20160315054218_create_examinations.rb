class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.integer :examiner_id
      t.string :name
      t.integer :subject_id
      t.integer :duration

      t.timestamps null: false
    end
  end
end
