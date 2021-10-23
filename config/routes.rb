Rails.application.routes.draw do
  resources :participantes
  resources :eventos
  root 'general#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
