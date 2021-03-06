Rails.application.routes.draw do
  get 'checkout_records/create'
  resources :books, only: [:show, :index]
  resources :locations, only: [:show, :index]
  resources :book_items, only: [:show, :index]
  resources :checkout_records, only: [:create]
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, only: [:create, :show] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end
  get '/users_home', to: 'users#show', as: 'users_home'

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
 
  root to: 'books#index'
end
