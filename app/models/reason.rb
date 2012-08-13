class Reason < ActiveRecord::Base
  attr_accessible :topic_id, :title, :description, :url1, :url2, :url3, :score, :is_approved
  
  belongs_to :topic
end
