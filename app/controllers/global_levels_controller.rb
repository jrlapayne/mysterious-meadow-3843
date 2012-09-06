class GlobalLevelsController < ApplicationController
  respond_to :json
  
  def index
    respond_with GlobalLevel.all
  end
  
  def show
    respond_with GlobalLevel.find(params[:id])
  end
  
  def create
    respond_with GlobalLevel.create(params[:global_level])
  end
  
  def update
    respond_with GlobalLevel.update(params[:id], params[:global_level])
  end
  
  def destroy
    respond_with GlobalLevel.destroy(params[:id])
  end
end
