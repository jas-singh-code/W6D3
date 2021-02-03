class UsersController < ApplicationController
    def index
        render plain: "Im in the index action"
    end

    def create
        render json: params
    end

    def show
        render json: params
    end
end