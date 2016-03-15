class Question < ActiveRecord::Base
  has_many :users, through: :user_questions
  has_many :user_questions
  has_many :options
  belongs_to :examination
  has_many :likes
end
