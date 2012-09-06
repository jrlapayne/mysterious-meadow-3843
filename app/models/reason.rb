class Reason < ActiveRecord::Base
  attr_accessible :topic_id, :title, :description, :url1, :url2, :url3, :score, :is_approved,
                  :question, :correct, :wrong1, :wrong2, :wrong3, :wrong4, :is_pro, :is_intro, :url
  
  belongs_to :topic
end
