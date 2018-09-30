Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#static pages
	# get "/pages/*page" => "pages#show"
	resources :invoicing_ledger_items
	resources :invoices
	get "/*page" => "pages#show"
	root 'pages#home'
end
