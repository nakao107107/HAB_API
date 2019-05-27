Rails.application.routes.draw do
  get 'categories/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :accountings
  resources :categories, only: [:index]
end
