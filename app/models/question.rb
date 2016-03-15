class Question < ActiveRecord::Base
  has_many :options
  belongs_to :examination
end
