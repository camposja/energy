Rails.application.routes.draw do
  get 'pages/homepage'

  resources :cities

  root 'pages#homepage'

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  mount Shrine::DownloadEndpoint => "/attachments"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
