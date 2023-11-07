Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homepage#index'

  # Add routes below this line
  # Renders all tasks
  get 'tasks' => 'tasks#index'

  # Creates new task
  post 'tasks' => 'tasks#create'

  # Deletes task
  delete 'tasks/:id' => 'tasks#destroy'

  # Mark task complete
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'

  # Mark task active
  put '/tasks/:id/mark_active' => 'tasks#mark_active'

  # Add routes below above line

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path' => 'homepage#index'
end
