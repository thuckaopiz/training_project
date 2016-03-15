class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :examination
  belongs_to :question
end
