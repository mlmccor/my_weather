module Api
  module V1
    class CitiesController < ApplicationController
      def index
        binding.pry
        @cities = City.all
        render json: @cities
      end
      def show
        binding.pry

      end
      def create
      end
      def destroy
      end


      private

      def city_params
        params.require(:city).permit(:name, :state, :latitude, :longitude)
      end
    end
  end
end
