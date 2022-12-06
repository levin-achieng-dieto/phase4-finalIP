class AirlinesController < ApplicationController
    def index
        airlines = Airline.all
        render json: airlines
    end
end
