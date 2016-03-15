class Answer < ActiveRecord::Base
  belongs_to :option
  belongs_to :answer_sheet
end
