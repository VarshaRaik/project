
Rails.application.routes.draw do
  resources :registrations
  resources :sessions
  delete 'logout', to: 'sessions#destroy'
  resources :products
  get 'password', to: 'passwords#edit', as: 'edit_password'
patch 'password', to: 'passwords#update'
get 'password/reset', to: 'password_resets#new'
post 'password/reset', to: 'password_resets#create'
get 'password/reset/edit', to: 'password_resets#edit'
patch 'password/reset/edit', to: 'password_resets#update'

#root "products#index"
  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end





