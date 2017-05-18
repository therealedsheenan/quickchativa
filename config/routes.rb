Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  # api v1
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      get 'users' => 'user#index'
      # chats
      resources :chats
      # rooms
      resources :rooms
    end
  end
end