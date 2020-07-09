Rails.application.routes.draw do
  devise_for :users
  root 'billing#index', as: :billing
  
  get '/card/new', to: 'billing#new_card', as: :add_payment_method
  post "/card", to: "billing#create_card", as: :create_payment_method

  get '/success', to: 'billing#success', as: :success
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
