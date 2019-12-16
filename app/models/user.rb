class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,      presence:       true,
                         uniqueness:     true,
                         case_sensitive: false,
                         format:         {with: VALID_EMAIL_REGEX}


  has_secure_password

  validates :password,   length: {minimum: 6}
end
