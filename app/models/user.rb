class User < ActiveRecord::Base
  has_many :causeUsers
  has_many :causes, through: :causeUsers

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }

  has_secure_password
  validates_confirmation_of :password
end