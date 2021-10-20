Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :users
      resources :journals
      resources :trips
      # resources :trips do
      #   resources :journals, only:[:index, :create]
      # end


      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'

 
    end
  end
end
