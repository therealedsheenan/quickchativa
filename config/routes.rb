Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      get 'users', to: :show, controller: 'user'
    end
  end
end