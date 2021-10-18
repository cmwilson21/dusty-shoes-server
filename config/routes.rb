Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do      
      resources :users
      # resources :journals
      resources :trips do
        resources :journals, only:[:index, :create]
      end


      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
