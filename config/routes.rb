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
  get   '/auth/:provider'          => 'omniauth#auth', as: :auth
  get   '/auth/:provider/callback' => 'session#create'
  get   '/auth/failure'            => 'session#failure'

  get  '/login'  => 'session#new'
  post '/login'  => 'session#create'
  get  '/logout' => 'session#destroy'

  post   '/favorites/:cityId'         => 'favorites#create'
  delete '/favorites/destroy/:cityId' => 'favorites#destroy'

  #Mailer route

  mount Shrine::download_endpoint, at: "/attachments"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
