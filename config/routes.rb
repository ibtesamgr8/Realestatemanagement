Rails.application.routes.draw do
  get 'docs/index'

  get 'docs/new'

  get 'docs/create'

  get 'docs/destroy'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :categories
  resources :plots
  resources :allottees
  post '/plots/plot_allottees', to: 'plots#plot_allottees'
resources :docs, only: [:index, :new, :create, :destroy]
end
