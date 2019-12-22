Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :user_cities
      resources :cities
    end
  end

  root 'welcome#home'
  get '/api/v1/get_weather', to: 'api/v1/api#get_weather'
  get '/api/v1/get_coords', to: 'api/v1/api#get_coordinates'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
