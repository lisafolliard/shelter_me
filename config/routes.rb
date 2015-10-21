Rails.application.routes.draw do
  resources :posts

  resources :tags
  # root :to => 'categories#index'
  #
  # resources :categories do
  #   resources :posts
  # end
end
