class ReasonEdit < ActiveRecord::Base
  attr_accessible :topic_id, :reason_id, :title, :description, :url1, :url2, :url3, :user_id,
                  :question, :correct, :wrong1, :wrong2, :wrong3, :wrong4, :is_pro, :is_intro
  
  belongs_to :topic
end
