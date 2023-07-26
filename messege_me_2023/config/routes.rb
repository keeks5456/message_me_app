Rails.application.routes.draw do

    resources :messages
    resources :rooms
    resources :users
    resources :messages
    resources :rooms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'chatroom#index'
    get "signup", to: "users#new"
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    post 'message', to: 'messages#create'
    get 'rooms', to: 'rooms#index' 
    mount ActionCable.server, at: '/cable'
    resources :users, except: [:new]
end
