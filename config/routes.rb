Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}

  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books
end
