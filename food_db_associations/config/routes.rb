Rails.application.routes.draw do

	root 'cuisines#index'

  resources :cuisines
  resources :dishes
  resources :foods

end
