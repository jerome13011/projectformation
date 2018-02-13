Rails.application.routes.draw do
  devise_for :users
	resources :formations do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]

	namespace :admin do
    resources :formations, only: [:index]
  end

end		
  