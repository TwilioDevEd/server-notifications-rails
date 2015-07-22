Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  match 'error/' => 'notifications#server_error', via: [:get, :post]

  resources :administrators, only: [:new, :create]

  # You can have the root of your site routed with "root"
  root 'notifications#index', as: 'home'
end
