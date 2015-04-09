Rails.application.routes.draw do

  root 'welcome#index'

  get '/sign-up' => 'registrations#new'
  post '/sign-up' => 'registrations#create'
  get '/sign-out' => 'authentication#destroy'
  get '/sign-in' => 'authentication#new'
  post '/sign-in' => 'authentication#create'

  resources :users

  resources :regions do
    resources :region_comments
  end

  resources :wines do
    resources :wine_comments
  end

  resources :wineries do
    resources :winery_comments
  end

end
