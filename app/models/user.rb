class User < ApplicationRecord

  has_many :purchases

  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true

end
