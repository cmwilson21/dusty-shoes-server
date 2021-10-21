Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :users do
        resources :trips, only: [:index, :destroy]
      end
      resources :trips do
        resources :journals
      end
      resources :journals
      # resources :trips do
      #   resources :journals, only:[:index, :create]
      # end


      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      # get 'users/:id/trips', to: 'trips#index'
 
    end
  end
end
