module Api
    module V1
        class UsersController < ApplicationController
        
            def show
                binding.pry
                user = User.find(params[:id])
                render json: user
            end
        end
    end
end
