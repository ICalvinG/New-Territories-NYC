Rails.application.routes.draw do

	resources :website
	resources :menu
	resources :jobs

	root 'website#index'

end
