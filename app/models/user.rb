class User < ApplicationRecord

  has_secure_password

  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true

  validates :email, uniqueness: { case_sensitive: false}
	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

	validates :password, length: { minimum: 5 } 
end
