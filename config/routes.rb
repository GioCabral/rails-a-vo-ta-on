Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :category, only: :index do
    resources :app, only: :index do
      resources :issues, only: :index
    end
  end


  resources :chatrooms, only: %i[show new index] do
    resources :messages, only: :create
  end
  post "", to: "chatrooms#create", as: :create_chat
  put "", to: "chatrooms#update", as: :join_chat
end
