class ReasonEditsController < ApplicationController
  respond_to :json
  
  def index
    respond_with ReasonEdit.all
  end
  
  def show
    respond_with ReasonEdit.find(params[:id])
  end
  
  def create
    respond_with ReasonEdit.create(params[:reason_edit])
  end
  
  def update
    respond_with ReasonEdit.update(params[:id], params[:reason_edit])
  end
  
  def destroy
    respond_with ReasonEdit.destroy(params[:id])
  end
end
