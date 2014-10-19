class User < ActiveRecord::Base
  has_many :causeUsers
  has_many :causes, through: :causeUsers

  validates :name, length: { minimum: 5 }
  validates :email, uniqueness: true
end
