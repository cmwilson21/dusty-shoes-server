Rails.application.routes.draw do
  resources :journals
  resources :trips
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
