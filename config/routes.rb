Rails.application.routes.draw do
  #Login User and Sssion Routes.
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  # Remove this before Git Commit 
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
  # get 'users/new'
  # get 'users/create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clock_events, except: :show
  # root 'clock_events#index'  
  # put `edit_clock_event_path`, to: 'clock_events#edit'
  get  '/clock_events', to: 'clock_events#new', as: 'new_clock_event'
  get  '/clock_events', to: 'clock_events#edit', as: 'edit_clock_event'
  get  '/clock_events', to: 'clock_event#index', as: 'show_clock_event'
end