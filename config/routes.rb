Rails.application.routes.draw do
  root 'homepage#index'

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path'    => 'homepage#index'
end
