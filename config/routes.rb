Rails.application.routes.draw do

  get 'dynamic_pages/home'
  get 'dynamic_pages/show'
  get 'dynamic_pages/user'

  get '/index', to: 'static_pages#index'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'

  get '/home/:id', to: 'dynamic_pages#home', as: 'home'
  get '/show/:id', to: 'dynamic_pages#show', as: 'show'
  get '/user/:id', to: 'dynamic_pages#user', as: 'user'
end
