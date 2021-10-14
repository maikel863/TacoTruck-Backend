class OrderTacosController < ApplicationController
    before_action :set_order_taco, only: [:show, :update, :destroy]

    #GET order taco
    def index
        @order_tacos = OrderTaco.all

        render json: @order_tacos
    end

    #GET order_tacos/1
    def show
        render json: @order_taco
    end

    #POST order_tacos
    def create
        @order_taco = OrderTaco.new(order_taco_params)

        if @order_taco.save
            render json: @order_taco, status: :created, location: @order_taco
        else
            render json: @order_taco.errors, status: :unprocessable_entity

        end
    end

    #PATCH order_tacos/1
    def update
        if @order_taco.update(order_taco_params)
            render json: @order_taco
        else
            render json: @order_taco.errors, status: :unprocessable_entity
        end
    end

    #DELETE order_tacos
    def destroy
        @order_taco.destroy
    end

    private

    def set_order_taco
        @order_taco = OrderTaco.find(params[:id])
    end

    def order_taco_params
        params.require(:order_taco).permit(:order_id, :taco_id)
    end
end