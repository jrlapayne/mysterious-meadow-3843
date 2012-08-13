class ScoringsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Scoring.all
  end
  
  def show
    respond_with Scoring.find(params[:id])
  end
  
  def create
    respond_with Scoring.create(params[:scoring])
  end
  
  def update
    respond_with Scoring.update(params[:id], params[:scoring])
  end
  
  def destroy
    respond_with Scoring.destroy(params[:id])
  end
end
