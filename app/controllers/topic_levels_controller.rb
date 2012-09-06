class TopicLevelsController < ApplicationController
  respond_to :json
  
  def index
    respond_with TopicLevel.all
  end
  
  def show
    respond_with TopicLevel.find(params[:id])
  end
  
  def create
    respond_with TopicLevel.create(params[:topic_level])
  end
  
  def update
    respond_with TopicLevel.update(params[:id], params[:topic_level])
  end
  
  def destroy
    respond_with TopicLevel.destroy(params[:id])
  end
end
