Rails.application.routes.draw do
  resources :adocaos
  resources :adotantes
  resources :website
  get 'website/adoption'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "website#index"
end
