class Comment < ActiveRecord::Base
  attr_accessible :reason_id, :user_id, :content, :ancestry
end
