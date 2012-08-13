class Task < ActiveRecord::Base
  attr_accessible :topic_id, :reason_id, :user_id
end
