class ExaminationExaminee < ActiveRecord::Base
  belongs_to :examination
  belongs_to :examinee, class: "User"
end
