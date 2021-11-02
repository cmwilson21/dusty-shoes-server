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


      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
 
    end
  end
end
