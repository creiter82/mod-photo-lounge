Rails.application.routes.draw do
  resources :photos
  root 'pages#home'

  get 'pricing', to: 'pages#pricing'

  resources "contacts", path: "contact", only: [:index, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
