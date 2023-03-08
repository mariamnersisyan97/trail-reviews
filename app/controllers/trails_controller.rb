class TrailsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    before_action :authorize, only: [:show]

    def index
        render json: Trail.all
    end

    def show 
        trail = Trail.find(params[:id])
        render json: trail
    end

    def create 
        trail = Trail.create!(trail_params)
        render json: trail, status: :created
    end

    private

    def trail_params
        params.permit(:name, :description, :image_url, :distance)
    end
end
