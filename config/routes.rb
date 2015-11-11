Rails.application.routes.draw do
  resources :retiros

  resources :vendedors

  resources :bodegas

  resources :productos

  devise_for :usuarios
  get 'inicio/index'

  root :to =>'inicio#index'
end
