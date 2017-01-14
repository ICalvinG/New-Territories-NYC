Rails.application.routes.draw do

	resources :website
	resources :about
	resources :job

	root 'website#index'

end
