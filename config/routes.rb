Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "tasks#index"

  resources :group_tasks

  resources :tasks, only: [:edit, :update]

  resources :group_tasks, only: [:show] do
    resources :tasks, only: [:new, :create]
  end


end
