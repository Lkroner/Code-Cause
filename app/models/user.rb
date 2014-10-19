class User < ActiveRecord::Base
  has_many :causeUsers
  has_many :causes, through: :causeUsers

  has_secure_password
  validates_confirmation_of :password
end