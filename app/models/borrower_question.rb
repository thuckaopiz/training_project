class BorrowerQuestion < ActiveRecord::Base
  belongs_to :borrower, class_name: "User"
  belongs_to :question
end
