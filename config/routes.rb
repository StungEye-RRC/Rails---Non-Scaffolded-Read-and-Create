Rails.application.routes.draw do
  # GET /products     => products controller's index action
  get 'products', to: 'products#index', as: 'products'

  # GET /products/:id => products controller's show action
  get 'products/:id', to: 'products#show', as: 'product', id: /\d+/

  # GET /products/new => products controller's new action
  get 'products/new', to: 'products#new', as: 'new_product'

  # POST /products    => products controller's create action
  post 'products', to: 'products#create'
end
