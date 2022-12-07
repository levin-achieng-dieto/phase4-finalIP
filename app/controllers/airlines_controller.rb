class AirlinesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_ivalid_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :rescue_record_not_found

    def index
        airlines = Airline.all
        render json: airlines, status: :ok
    end

    def show
        airline = Airline.find(params[:id])
        render json: airline, serializer: SingleAirlineSerializer
    end

    def create
        airline = Airline.create!(airline_params)
        render json: airline, status: :created
    end

    def update
        airline = Airline.find(params[:id])
        render json: airline, status: :created
    end

    def destroy
        airline = Airline.find(params[:id])
        airline.destroy
        render json: airline, status: :no_content
    end

    private

    def airline_params
        params.permit(:name, :image_url)
    end

    def render_ivalid_entity_response(invalid) 
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def rescue_record_not_found
        render json: {error: "Airline not found"}, status: :not_found
    end

    # def options
    #     @option ||= { inlude: %i[reviews]}
    # end
end
