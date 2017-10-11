Rails.application.routes.draw do
  resources :products do 
  	collection do
  		get :export
  	end
  end
  resources :media_contents, only: [:create,:new]
  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
