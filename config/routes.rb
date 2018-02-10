Rails.application.routes.draw do
  namespace :backoffice do
    get 'categories/index'
  end

	namespace :site do
		get 'home', to:'home#index'
	end

	get 'backoffice', to: 'backoffice/dashboard#index'

	namespace :backoffice do
		get 'dashboard', to: 'dashboard#index'
	end


	root 'site/home#index'

	devise_for :admins
	devise_for :members
end
