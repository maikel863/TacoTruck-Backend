class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    #GET orders
    def index
        @orders = Order.all

        render json: @orders
    end

    #GET single order
    def show
        render json: @order
    end

    #POST orders
    def create
        @order = Order.new(order_params)

        if @order.save
            render json: @order, status: :created, location: @order
        else
            render json: @order.errors, status: :unprocessable_entity
        end
    end

    #PATCH orders
    def update
        if @order.update(order_params)
            render json: @order
        else
            render json: @order.errors, status: :unprocessable_entity
        end
    end

    #DELETE orders
    def destroy
        @order.destroy
    end

    private

    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require(:order).permit(:date, :status, :user_id, :total)
    end
end