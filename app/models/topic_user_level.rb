class TopicUserLevel < ActiveRecord::Base
  attr_accessible :topic_id, :user_id, :level, :points
end
