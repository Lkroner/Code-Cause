class Cause < ActiveRecord::Base
  has_many :causeUsers

  has_many :coders, through: :causeUsers
  has_many :do_gooders, through: :causeUsers
end
