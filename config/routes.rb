Rails.application.routes.draw do
  get 'locations/index'
  get 'locations/show'
  get 'book_items/index'
  get 'book_items/show'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get 'locations/:id', to: 'locations#show', as: 'location'
  post 'locations/checkout', to:'locations#checkout_book'
  get 'user', to: 'users#show'
  get 'catalog', to: 'book_items#index', as: 'book_item'
  root to: 'book_items#index'
end
