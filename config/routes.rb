Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/home'
  root to: 'teams#index'
  resources :teams, only: [:index, :show, :new, :create] do
    resources :signings, only: [:new, :create]
  end
  resources :signings, only: [:destroy]
end
