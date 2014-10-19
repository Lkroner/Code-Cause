Rails.application.routes.draw do
	root 'welcome#index'
  resources :causes
  resources :do_gooders
  resources :coders

  get '/signup', to: 'welcome#signup', as: "signup"
end
