Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do  
      post '/login', to: 'sessions#create'
      get '/auto_login', to: 'sessions#auto_login'
      get '/user_is_authed', to: 'sessions#user_is_authed'
      resources :blogs
      resources :users, only: [:create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
