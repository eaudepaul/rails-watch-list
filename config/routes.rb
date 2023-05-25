Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies, only: [:index, :show]
  root to: 'lists#home'
  resources :lists, only: [:index, :create, :show, :new] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
