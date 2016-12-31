class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
    render json: @workouts
  end

  def create
    @workout = Workout.new(params.require(:workout).permit(:name))

    @workout.save
    render json: @workout
  end

  def show
    @workout = Workout.find(params[:id])
    render json: @workout
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
  end

end
