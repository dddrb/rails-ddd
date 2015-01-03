Rails.application.routes.draw do
  resources :users
  mount DrawErd::Engine, at: '/rails/info/erd'
  mount DrawSmd::Engine, at: '/rails/info/smd'
end
