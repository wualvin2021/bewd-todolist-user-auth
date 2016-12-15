Rails.application.routes.draw do
  root 'homepage#index'

  get    'tasks'     => 'tasks#index'
  post   'tasks'     => 'tasks#create'
  delete 'tasks/:id' => 'tasks#destroy'

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path'    => 'homepage#index'
end
