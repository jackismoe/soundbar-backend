Rails.application.routes.draw do
# sessions
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

# users
  resources :users, only: [:show, :edit, :update, :destroy]
  get '/signup',  to: 'users#new', as: 'users'
  post '/signup', to: 'users#create'

# category
  resources :categories, only: :index

# brand
  resources :brands, only: [:index, :create, :new, :update] do
    resources :instruments, only: [:new]
  end
  get '/brands/:id/instruments', to: 'brands#show', as: 'brand_instruments'
  get '/brands/string',     to: 'brands#string'
  get '/brands/percussion', to: 'brands#percussion'
  get '/brands/keyboard',   to: 'brands#keyboard'
  get '/brands/:id/edit',   to: 'brands#edit', as: 'edit_brand'
  patch '/brand/:id',       to: 'brands#update'

# instruments
  resources :instruments, only: [:index, :new, :create, :destroy, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
  end
  get '/instrument/:id',         to: 'instruments#show', as: 'instruments_show'
  get '/instruments',            to: 'instruments#index'
  get '/instruments/string',     to: 'instruments#string'
  get '/instruments/percussion', to: 'instruments#percussion'
  get '/instruments/keyboard',   to: 'instruments#keyboard'
  patch '/instruments/:id',      to: 'instruments#update'

# reviews 
  resources :reviews, only: [:new, :create, :index]
  get '/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  patch '/reviews/:id',    to: 'reviews#update', as: 'review'
  delete '/reviews/:id', to: 'reviews#delete', as: 'delete_review'

# cart
  resources :carts

end
