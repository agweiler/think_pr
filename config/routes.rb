  Rails.application.routes.draw do

  devise_for :admins

  resources :posts do
    resources :comments
  end


  root "pages#index"

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/clients', to: 'pages#portfolio'
  get '/expertise', to: 'pages#services'
  get '/posts', to: 'posts#index'



end
