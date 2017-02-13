Rails.application.routes.draw do

	resources :website
	resources :menu
	resources :jobs
	resources :contacts

	root 'website#index'

end
