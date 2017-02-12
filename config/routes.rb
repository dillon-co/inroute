Rails.application.routes.draw do
  resources :service_requests

  root to: 'service_requests#new'

  post 'create_request' => 'service_requests#create_request'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
