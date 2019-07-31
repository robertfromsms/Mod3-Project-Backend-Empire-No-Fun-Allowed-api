Rails.application.routes.draw do
	post "/personnels/login", to: 'personnels#login'

  	resources :duties, only: [:create, :index, :show, :update]
  	resources :assignments, only: [:create, :update]
  	resources :personnels, only: [:create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
