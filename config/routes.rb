Rails.application.routes.draw do

	root to: 'static_pages#root'

	namespace :api, defaults: { format: :json } do
		resources :users, only: [:create, :show, :update, :destroy], param: :username, constraints: { username: /([^\/])+?.*/ } do
			resources :tracks, only: [:show, :update], param: :title, constraints: { title: /([^\/])+?.*/ }
		end
		resource :session, only: [:create, :destroy]
		resources :tracks, only: [:create, :index, :destroy]
		resources :favorite_tracks, only: [:create, :destroy]
	end
	
end
