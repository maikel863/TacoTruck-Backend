class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with :render_not_found_response

    #GET orders
    def index
        orders = Order.all

        render json: orders
    end

    #GET single order
    def show
        id = params[:id]
        order = Order.find(id)
        render json: order
    end

    #POST orders
    def create
        order = Order.create(order_params)
        render json: order
    end

    #PATCH orders
    def update
        id = params[:id]
        order = Order.find(id)
        order.update(order_params)
        render json: order
    end

    #DELETE orders
    def destroy
        id = params[:id]
        order = Order.find(id)
        order.destroy
        render json: {message: "order was destroyed"}
    end

    private

    def order_params
        params.permit(:date, :status, :user_id, :total)
    end

    def render_not_found_response
        render json: {error: "Order not found"},
        status: :not_found
    end
end