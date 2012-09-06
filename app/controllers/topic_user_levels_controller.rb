class TopicUserLevelsController < ApplicationController
  respond_to :json
  
  def index
    respond_with TopicUserLevel.all
  end
  
  def show
    respond_with TopicUserLevel.find(params[:id])
  end
  
  def create
    respond_with TopicUserLevel.create(params[:topic_user_level])
  end
  
  def update
    respond_with TopicUserLevel.update(params[:id], params[:topic_user_level])
  end
  
  def destroy
    respond_with TopicUserLevel.destroy(params[:id])
  end
end
