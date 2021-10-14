class TacosController < ApplicationController
    before_action :set_taco, only: [:show, :update, :destroy]

    # GET /tacos
    def index
        @tacos = Taco.all

        render json: @tacos
    end

    # GET single taco
    def show
        render json: @taco
    end

    #POST tacos
    def create
        @taco = Taco.new(taco_params)

        if @taco.save
            render json: @taco, status:  :created, location: @taco
        else
            render json: @taco.errors, status: :unprocessable_entity
        end
    end

    #PATCH tacos
    def update
        if @taco.update(taco_params)
            render json: @taco
        else
            render json: @taco.errors, status: :unprocessable_entity
        end
    end

    #DELETE tacos
    def destroy
        @taco.destroy
    end

    private
    
    def set_taco
        @taco = Taco.find(params[:id])
    end

    def taco_params
        params.require(:taco).permit(:name, :description, :image, :price, :user_id)
    end
end