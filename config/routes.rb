Rails.application.routes.draw do
  # api v1
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      get 'users' => 'user#index'
      # chats
      resources :chats
    end
  end
end