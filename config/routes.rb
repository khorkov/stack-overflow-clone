DbcOverflow::Application.routes.draw do
  resources :questions do
    resource :comments
    resource :answers
    resource :votes
  end

  resources :answers do
    resource :comments
    resource :votes
  end

  resources :comments do
    resource :votes
  end

  resources :users

  get     '/login' => 'sessions#new'
  post    '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root :to => "questions#index"
end
