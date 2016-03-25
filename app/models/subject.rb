class Subject < ActiveRecord::Base
  belongs_to :category
  has_many :examinations
  has_many :questions
end
