class BodyPartsController < ApplicationController

  def index
    body_parts = BodyPart.all
    render json: body_parts
  end

  def create
    @body_part = BodyPart.new(params.require(:body_part).permit(:name))
    @body_part.save
    render json: @body_part
  end

  def show
    @body_part = BodyPart.find(params[:id])
    render json: @body_part
  end

  def destroy
    @body_part = BodyPart.find(params[:id])
    @body_part.destroy
  end

end
