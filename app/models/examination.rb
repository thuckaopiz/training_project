class Examination < ActiveRecord::Base
  belongs_to :examiner, class_name: "User"
  has_many :examinees, through: :answer_sheets, foreign_key: "examinee_id"
  has_many :answer_sheets
  has_many :questions
  has_many :likes
end
