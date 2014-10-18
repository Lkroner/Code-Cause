Rails.application.routes.draw do
	root 'welcome#index'
  resources :causes
  resources :do_gooders
  resources :coders
end
