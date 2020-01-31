Rails.application.routes.draw do
  resources :dogs, only: [:index, :create, :updtate, :destroy]
  resources :breeds, only: [:index, :create, :updtate, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
