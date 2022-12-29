Todo::Application.routes.draw do
  devise_for :users
  resources :tasks
  resources :tags
  resources :tasklists
  get "home/index"
  root to: "home#index"
end
