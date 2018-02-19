Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'
  namespace :backoffice do
  	resources :admins, expect: [:show, :destroy]
    resources :categories, except: [:show, :destroy]
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :site do
    get 'home', to:'home#index'
  end


  devise_for :admins, skip: :registrations
  devise_for :members

  root 'site/home#index'

end
