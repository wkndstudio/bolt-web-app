Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#static pages
	# get "/pages/*page" => "pages#show"
	get "/*page" => "pages#show"
	root 'pages#home'
end
