class User < ActiveRecord::Base
  has_many :answer_sheets, foreign_key: "examinee_id"
  has_many :examinations, foreign_key: "examiner_id"
  belongs_to :role
  has_many :likes
end
