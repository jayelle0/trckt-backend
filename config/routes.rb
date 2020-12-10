Rails.application.routes.draw do
  resources :timesheets
  resources :projects
  resources :clients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
