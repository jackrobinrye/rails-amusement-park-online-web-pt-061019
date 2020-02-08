Rails.application.routes.draw do
  get '/signin' => 'users#new'
  get '/login' => 'sessions#new'

  resources :users, only: [:create, :new, :show]
  resources :sessions, only: [:create, :destroy]


  root to: "application#hello"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
