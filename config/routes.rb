Rails.application.routes.draw do
  root :to => 'static#index'

  resources :posts
  resources :tags
  # root :to => 'categories#index'
  #
  # resources :categories do
  #   resources :posts
  # end
end
