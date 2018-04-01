Rails.application.routes.draw do
  resources :index_page

  root 'index_page#index'
end
