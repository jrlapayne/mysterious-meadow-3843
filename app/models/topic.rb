class Topic < ActiveRecord::Base
  attr_accessible :brief_title, :title, :description, :score, :is_approved
  
  has_many :reasons, dependent: :destroy
end
