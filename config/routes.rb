Rails.application.routes.draw do

  # API get fetches
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

  # more advanced actions
  post '/users', to: 'users#create'
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  
  get '/sessions', to: 'users#sessions'
   # this is what I'll fetch to display a single user's sessions and perceptions on the page
  # yes, right, because if I use auth, I can show the JWT to identify the user,
  # and then render only that user's sessions... I believe. 😂


  # resources :perceptions
  # resources :sessions
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
