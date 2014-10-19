Rails.application.routes.draw do
  root 'welcome#index'
  resources :causes
  resources :do_gooders
  resources :coders
  resources :users

  get '/redirect', to: 'users#redirect', as: "redirect"

  get '/signup', to: 'welcome#signup', as: "signup"
  get '/login', to: 'welcome#login', as: 'login'
  get '/logout', to: 'welcome#logout', as: 'logout'
end
