class Question < ActiveRecord::Base
  belongs_to :maker, class_name: "User"
  has_many :options, dependent: :destroy
  belongs_to :subject
  has_many :likes
  has_many :examinations, through: :question_examinations
  has_many :question_examinations
  has_many :borrowers, through: :borrower_questions, foreign_key: :borrower_id
  has_many :borrower_questions

  accepts_nested_attributes_for :options, :reject_if => lambda { |option| option[:content].blank? }
end
