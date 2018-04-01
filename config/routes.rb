Rails.application.routes.draw do

	resources :website

	# Not currently in use
	# resources :menu
	# resources :jobs
	# resources :contacts

	root 'website#index'

end
