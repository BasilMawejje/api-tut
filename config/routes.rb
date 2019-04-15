Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :albums, only: [:index, :show]
      resources :users, only: [:index, :show]
      resources :purchases, only: [:create]
    end
  end
end
