class SpicesController < ApplicationController

    def index 
        spice = Spice.all 
        render json: spice
    end

    def create 
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        render json: spice
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
