class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
    render json: @exercises, :include => [:successions]
  end

  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise, :include => [:successions]
  end

end
