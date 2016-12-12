Rails.application.routes.draw do
  root 'homepage#index'

  namespace :api do
    namespace :v1 do
      resources :tasks
      put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
      put '/tasks/:id/mark_active'   => 'tasks#mark_active'
    end
  end

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path'    => 'homepage#index'
end
