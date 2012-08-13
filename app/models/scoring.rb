class Scoring < ActiveRecord::Base
  attr_accessible :user_id, :topic_id, :reason_id, :vote
end
