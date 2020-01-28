Rails.application.routes.draw do
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
  get 'users/delete'
  get 'user', to: 'users#show'
  get 'book', to: 'book#index', as: 'book'
  get 'book/create'
  get 'book/new'
  get 'book/destroy'
  get 'book/show'
  get 'catalog/show', to: 'catalog#show'
  get 'catalog/search'
  get 'catalog/checkout'
  root to: 'welcome#show'
end
