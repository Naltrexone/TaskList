Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  resources:tasks

  # get '/tasks', to: 'tasks#index', as: 'tasks'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/overdue', to: 'tasks#overdue', as: 'overdue_tasks'
  # post 'tasks', to: 'tasks#create'
  #
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'
  # delete '/tasks/:id', to: 'tasks#destroy'
  # patch '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
  # patch '/tasks/:id/incomplete', to: 'tasks#incomplete', as: 'incomplete_task'

  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete'
  patch '/tasks/:id/undo_mark_complete', to: 'tasks#undo_mark_complete', as: 'undo_mark_complete'
end
