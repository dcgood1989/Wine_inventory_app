Rails.application.routes.draw do

  root 'welcome#index'

  get '/sign-up' => 'registrations#new'
  post '/sign-up' => 'registrations#create'
  get '/sign-out' => 'authentication#destroy'
  get '/sign-in' => 'authentication#new'
  post '/sign-in' => 'authentication#create'

  resources :users
  resources :wineriez
  resources :winez

  resources :regions do
    resources :region_comments
    resources :wineries do
      resources :winery_comments
      resources :wines do
        resources :wine_comments
      end
    end
  end
end
