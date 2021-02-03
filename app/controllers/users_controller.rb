class UsersController < ApplicationController
    def index
        # render plain: "Im in the index action"
        render json: user
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))
        if user.save!
            render json: user
        else
            render json: user.errors.full_messages, status: :unporcessable_entity
        end
    end

    def show
        user= User.find(params[:id])
        render json: user
    end

    def update
        debugger
        user= User.find(params[:id])
        user.update
        render json: user
    end

    def destroy
        user= User.find(params[:id])
        user.destroy
        render json: user
    end
end