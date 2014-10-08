Rails.application.routes.draw do
  root :to => 'users#home'

  resources :posts do
    resources :comments
  end


  resources :users


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end