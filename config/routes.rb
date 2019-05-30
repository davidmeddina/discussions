Rails.application.routes.draw do
  resources :channels
  resources :discussions do
    resources :replies
  end
  
  root 'discussions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, controllers: {registrations: 'registrations'}
end
