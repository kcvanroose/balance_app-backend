Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  post '/login', to: 'users#login'
  get '/validate', to: 'users#validate'
  resources :tasks, only: [:update, :create, :new ]
  resources :projects, only: [:create, :update, :delete]
  resources :clients, only: [:create, :update]
  get "user_projects/:id", to: 'users#user_projects'
  delete '/projects/:id', to: 'projects#delete'
end
