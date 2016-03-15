class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :answer_sheets, foreign_key: "examinee_id"
  has_many :examinations, foreign_key: "examiner_id"
  belongs_to :role
  has_many :likes
end
