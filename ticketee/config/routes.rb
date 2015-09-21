Rails.application.routes.draw do
	root 'projects#index'
	
  devise_for :users

  resources :projects, only: [:index, :show, :edit, :update] do
  	resources :tickets
  end

   namespace :admin do
  	root 'application#index'
  	resources :projects, only: [:new, :create, :destroy]
  end
end