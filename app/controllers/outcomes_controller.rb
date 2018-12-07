class OutcomesController < ApplicationController
  def index
      render json: Outcome.all
  end

  def show
      render json: Outcome.find(params[:id])
  end

  def create
      render json: Outcome.find_or_create_by(outcome_params)
  end

  def update
      Outcome.find(params[:id]).update(outcome_params)
      render json: Outcome.find(params[:id])
  end

  def destroy
      render json: Outcome.find(params[:id]).destroy
  end

  private
  def outcome_params
      params.require(:event).permit(:name)
  end
end
