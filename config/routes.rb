Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  get 'articles/create'
  get 'articles/show'
  get 'articles/destroy'
  resources :dashboard, only: :index
  root 'employees#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :employees do
    resources :profiles
  end
end
