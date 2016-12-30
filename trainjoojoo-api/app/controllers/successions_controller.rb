class SuccessionsController < ApplicationController

  def index
    @successions = Succession.all
    render json: @successions
  end
  
  def create
    @succession = Succession.new(params.require(:succession).permit(:repetitions))
    
    @succession.save
    render json: @succession
  end
  
  def show
    @succession = Succession.find(params[:id])
    render json: @succession
  end
  
  def destroy
    @succession = Succession.find(params[:id])
    @succession.destroy
  end

end
