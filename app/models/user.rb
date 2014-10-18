class User < ActiveRecord::Base
  has_many :causeUsers
  has_many :causes, through: :causeUsers
end
