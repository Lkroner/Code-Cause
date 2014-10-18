class CauseUser < ActiveRecord::Base
  belongs_to :cause
  belongs_to :coder, foreign_key: :user_id
  belongs_to :do_gooder, foreign_key: :user_id
end
