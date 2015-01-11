Rails.application.routes.draw do
  resources :users

  namespace :user do
    get    :sign_in,  to: 'session#new'
    post   :sign_in,  to: 'session#create'
    delete :sign_out, to: 'session#destroy'
  end

  root 'user/session#show'

  scope module: :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
    end
  end

  mount GrantFront::Engine, at: '/rails/info/policies'
  mount DrawErd::Engine, at: '/rails/info/erd'
  mount DrawSmd::Engine, at: '/rails/info/smd'
  mount DrawUml::Engine, at: '/rails/info/uml'
end
