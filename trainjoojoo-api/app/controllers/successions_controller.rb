class SuccessionsController < ApplicationController

  def index
    @successions = Succession.all
    render json: @successions
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @succession = @workout.successions.create(params.require(:succession).permit(:repetitions, :exercise_id))

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
