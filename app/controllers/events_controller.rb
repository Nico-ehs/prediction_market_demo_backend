class EventsController < ApplicationController
  def index
      render json: Event.all
  end

  def show
      render json: Event.find(params[:id])
  end

  def create
      render json: Event.find_or_create_by(Event_params)
  end

  def update
      Event.find(params[:id]).update(event_params)
      render json: Event.find(params[:id])
  end

  def destroy
      render json: Event.find(params[:id]).destroy
  end

  private
  def event_params
      params.require(:event).permit(:name)
  end
end
