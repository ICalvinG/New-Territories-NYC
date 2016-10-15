Rails.application.routes.draw do
  get 'job/index'

  get 'about/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :website
	resources :about
	resources :job

	root 'website#index'

end
