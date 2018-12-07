class PredictionsController < ApplicationController
  def index
      render json: Prediction.all
  end

  def show
      render json: Prediction.find(params[:id])
  end

  def create
      render json: Prediction.find_or_create_by(prediction_params)
  end

  def update
      Prediction.find(params[:id]).update(prediction_params)
      render json: Prediction.find(params[:id])
  end

  def destroy
      render json: Prediction.find(params[:id]).destroy
  end

  private
  def prediction_params
      params.require(:event).permit(:name)
  end
end
