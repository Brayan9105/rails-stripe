Rails.application.routes.draw do
  devise_for :users
  root 'billing#index', as: :billing
  
  get '/card/new', to: 'billing#new_card', as: :add_payment_method
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
