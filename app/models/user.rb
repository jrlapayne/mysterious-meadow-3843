class User < ActiveRecord::Base
  attr_accessible :name, :email, :provider, :uid, :token, :is_admin, :is_temp_user, :level, :xp, :votes
  
  def self.create_with_omniauth(auth, user)
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.is_temp_user = false
      user.save
      return user
  end
end
