Rails.application.routes.draw do

	resources :website
	resources :menu
	resources :job

	root 'website#index'

end
