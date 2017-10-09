Rails.application.routes.draw do
  devise_for :shelter_admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root :to => 'welcome#index'
  resources :animals do
  	
  end
  resources :shelters do
  	
  end

end
