Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :tweeets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "tweeets#index"
  get "tweeets/feed" => "tweeets#feed"
  get "tweeets/who-to-follow" => "tweeets#who-to-follow"
  get "tweeets/trend" => "tweeets#trend"

  

end
