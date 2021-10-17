class TacosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /tacos
    def index
        tacos = Taco.all

        render json: tacos
    end

    # GET single taco
    def show
        taco = find_taco
        render json: taco
    end

    #POST tacos
    def create
        taco = Taco.new(taco_params)
        render json: taco, status: :created
    end

    #PATCH tacos
    def update
        taco = find_taco
        taco.update(taco_params)
        render json: taco
    end

    #DELETE tacos
    def destroy
        taco = find_taco
        taco.destroy
        head :no_content
    end

    private
    
    def find_taco
        Taco.find(params[:id])
    end

    def taco_params
        params.permit(:name, :description, :image, :price, :user_id)
    end

    def render_not_found_response
        render json: {error: "taco not found"}, status: :not_found
    end
end