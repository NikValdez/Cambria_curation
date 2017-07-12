Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :write_ups
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :rate_podcasts
	root 'creatives#index'
	get 'creatives/index'
end
