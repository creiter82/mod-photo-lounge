Rails.application.routes.draw do

  root 'pages#home'

  get 'pricing', to: 'pages#pricing'

  resources :events, path: 'photos'

  resources "contacts", path: "contact", only: [:index, :create]

end
