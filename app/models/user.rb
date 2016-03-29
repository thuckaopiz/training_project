class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable
  has_many :answer_sheets, foreign_key: "examinee_id"
  has_many :examinations, foreign_key: "examiner_id"
  belongs_to :role
  has_many :likes
  has_many :questions, foreign_key: "maker_id"
  has_many :borrowed_questions, through: :borrower_questions
  has_many :borrower_questions
  has_many :identities

  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end
end
