  Rails.application.routes.draw do

  # devise_for :users
  resources :posts do
    resources :comments
  end


  root "pages#index"

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/clients', to: 'pages#portfolio'
  get '/expertise', to: 'pages#services'



end
