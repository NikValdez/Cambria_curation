Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :rate_podcasts
	root 'creatives#index'
	get 'creatives/index'
end
