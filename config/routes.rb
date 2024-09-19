# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/homepage'
  get 'pages/theme'

  resources :cities do
    collection do
      get 'new-or-create', as: :new_or_create
    end

    member do
      get 'email', as: :email
    end
  end

  root 'pages#homepage'

  # Omniauth routes
  get   '/auth/:provider',          to: 'omniauth#auth', as: :auth
  get   '/auth/:provider/callback', to: 'session#create'
  get   '/auth/failure',            to: 'session#failure'

  get  '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get  '/logout', to: 'session#destroy'

  post   '/favorites/:cityId',         to: 'favorites#create'
  delete '/favorites/destroy/:cityId', to: 'favorites#destroy'

  # Mailer route

  mount Shrine::DownloadEndpoint, at: '/attachments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
