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

  # OmniAuth 2.x requires POST to start auth (CSRF protection).
  # The middleware intercepts POST /auth/:provider before Rails routing,
  # so the 'to:' here is only a fallback; the named route gives us auth_path helper.
  post  '/auth/:provider',          to: 'session#create', as: :auth
  get   '/auth/:provider/callback', to: 'session#create'
  get   '/auth/failure',            to: 'session#new'

  get  '/login', to: 'session#new'
  post '/login', to: 'session#create'
  get  '/logout', to: 'session#destroy'

  post   '/favorites/:cityId',         to: 'favorites#create'
  delete '/favorites/destroy/:cityId', to: 'favorites#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
