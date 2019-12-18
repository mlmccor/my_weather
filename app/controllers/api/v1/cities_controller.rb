module Api
  module V1
    class CitiesController < ApplicationController
      def index
      end
      def create
        city = City.create(city_params)
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
