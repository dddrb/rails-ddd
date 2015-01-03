Rails.application.routes.draw do
  namespace :user do
  get 'session/show'
  end

  namespace :user do
  get 'session/new'
  end

  resources :users

  namespace :user do
    get    :sign_in,  to: 'session#new'
    post   :sign_in,  to: 'session#create'
    delete :sign_out, to: 'session#destroy'
  end

  root 'user/session#show'

  mount DrawErd::Engine, at: '/rails/info/erd'
  mount DrawSmd::Engine, at: '/rails/info/smd'
  mount DrawUml::Engine, at: '/rails/info/uml'
end
