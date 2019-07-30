Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :edit, :show, :update, :destroy] 
    end
end
