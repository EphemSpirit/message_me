Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/message', to: 'messages#create'
  root 'chatrooms#index'

  mount ActionCable.server, at: '/cable'

end
