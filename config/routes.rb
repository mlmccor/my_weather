Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :user_cities
      resources :cities
    end
  end

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
