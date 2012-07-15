class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation,:year,:university,:major,:minor
  
  validates :name, presence: true, length: { maximum: 50 }
  has_many :notebooks
  has_many :payements
  validates :email, presence: true
  validates :university ,presence: true
  validates :major ,presence: true
  validates :year ,presence: true
  VALID_EMAIL_REGEX = /\b[A-Za-z0-9._%-]+@[a-zA-Z0-9.-]+\.edu\b/
  
  validates :email, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  
  validates :password, presence: true, length: { minimum: 6 }

  validates :password_confirmation, presence: true
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  has_secure_password

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end


end