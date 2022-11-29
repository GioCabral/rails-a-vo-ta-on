Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

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
  put "/close", to: "chatrooms#close_chat", as: :close_chat

  resources :history, only: :index
end
