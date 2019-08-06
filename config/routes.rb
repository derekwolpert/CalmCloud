Rails.application.routes.draw do

	root to: 'static_pages#root'

	namespace :api, defaults: { format: :json } do
		resources :users, only: [:create, :show, :update, :destroy] 
		resource :session, only: [:create, :destroy]
		resources :tracks, only: [:create, :show, :index, :update, :destroy]
	end
	
end
