class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_ivalid_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :rescue_record_not_found

    def create
        review = airline.reviews.create(review_params)
        render json: review, status: :created
    end
    

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: review, status: :no_content
    end

    private

    def review_params
        params.permit(:title, :description, :score, :airline_id)
    end

    def render_ivalid_entity_response(invalid) 
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def rescue_record_not_found
        render json: {error: "Review not found"}, status: :not_found
    end

    def airline
        @airline ||= Airline.find(params[:airline_id])
    end
end
