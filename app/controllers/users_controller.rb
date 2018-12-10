class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.find_or_create_by(user_params)
        user.money ||= 1000
        user.save
        render json: user
    end

    def update
        User.find(params[:id]).update(user_params)
        render json: User.find(params[:id])
    end

    def destroy
        render json: User.find(params[:id]).destroy
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end

end
