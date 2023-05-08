Rails.application.routes.draw do
  # Defines the root of the application
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/contact'
  get 'demo/about'

  # Resource routing automatically creates all of the common routes for a given resourceful controller.
  #  A single call to resources can declare all of the necessary routes for your index, show, new,
  # edit, create, update, and destroy actions.
  #
  # We can control which of these are create with :only and :except. See below,
  # resources :users, :except => [:show]
  #
  # We can include other actions by adding them inside a block
  resources :subjects do
    # Member specifies that this is targeting a single instance. We can use collection to target all
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'
  #
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'


  # default route
  # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
