class BirdsController < ApplicationController
    def index 
        birds = Bird.all 
        render json: birds
    end

    def show
        bird = Bird.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        render json: "Bird Not Found"
    end
end
