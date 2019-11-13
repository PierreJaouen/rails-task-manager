Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index', as: 'tasks'
  post '/tasks', to: 'tasks#completed'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  # post '/tasks', to: 'tasks#create' as:
  # get '/tasks', to: 'tasks#'
  # delete '/tasks', to: 'tasks#'
end
