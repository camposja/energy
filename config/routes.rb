Rails.application.routes.draw do
  get 'pages/homepage'
  get 'pages/theme'

  resources :cities do
    collection do
      post 'new-or-create', as: :new_or_create
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
  get '/town_email' => 'session#souvenir_email'

  mount Shrine::DownloadEndpoint => "/attachments"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
