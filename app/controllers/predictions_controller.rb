
class PredictionsController < ApplicationController
  def index
      render json: Prediction.all
  end

  def show
      render json: Prediction.find(params[:id])
  end

  def create
      print "\n #{params} test1 \n "
      user = User.find(params[:prediction][:user_id])
      print "\n \n #{user.money} #{user.money >= params[:prediction][:amount]} \n \n"
      if user.money < params[:prediction][:amount]
        render json: {log: "Not enough money"}
      else
        # binding.pry
        user.money = user.money - params[:prediction][:amount]
        user.save
        render json: {log: "Bet made"}
      end


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
      params.require(:prediction).permit(:amount, :user_id, :outcome_id)
  end
end
