Rails.application.routes.draw do
  devise_for :users
  root to: 'schedules#index'
  resources :schedules do
    resources :comments, only: :create
  end
end