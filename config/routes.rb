Rails.application.routes.draw do
  root 'gossips#index'
  get '/team', to: 'the_gossip_project#team'
  get '/contact', to: 'the_gossip_project#contact'
  get '/welcome/:name', to: 'the_gossip_project#landing'

  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
    resources :tags, except: [:destroy]
  end
  resources :cities
  resources :users
  resources :comments, only: [:new, :create, :index, :destroy]
  resources :tags
  resources :sessions, only: [:new, :create, :destroy]
end
