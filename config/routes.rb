Rails.application.routes.draw do
  root 'billing#index', as: :billing
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
