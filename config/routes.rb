Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#static pages
	# get "/pages/*page" => "pages#show"
	resources :invoicing_ledger_items
	resources :invoices
	resources :dashboard
	get "/*page" => "pages#show"
	get "/*dashboard" => "dashboard#index"
	root 'dashboard#index'
end
