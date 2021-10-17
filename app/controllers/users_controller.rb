class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    #GET users
    def index
        users = User.all

        render json: users
    end

    #GET single user
    def show
        id = params[:id]
        customer = Customer.find(id)
        render json: user
    end

    #POST user
    def create
        user = User.create(user_params)
        render json: customer
    end

    #PATCH user
    def update
        id = params[:id]
        user = User.find(id)
        user.update(user_params)
        render json: user
    end

    #DELETE
    def destroy
        id = params[:id]
        user = User.find(id)
        user.destroy
        render json: {message: "user was destroyed"}
    end

    private

    def user_params
        params.permit(:name, :email, :password_digest)
    end

    def render_not_found_response
        render json: { error: "User not found"},
        status: :not_found
    end


end