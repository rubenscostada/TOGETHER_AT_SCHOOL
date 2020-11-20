Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :classes do
    resources :pictures, only: [ :index, :new, :create]
  end

  resources :kids do
    resources :small_events, only: [ :index, :new, :create]
  end

  resources :chatrooms, only: [ :show, :index ] do
    resources :messages, only: :create
  end
end
