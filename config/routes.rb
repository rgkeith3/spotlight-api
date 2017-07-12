Rails.application.routes.draw do
  devise_for :users

  root to: 'api/posts#index'
  namespace :api do
    resources :posts, only: [:index, :show, :create, :update, :destroy]

    post 'follow', to: 'follow#create'
    delete 'follow/:user_id', to: 'follow#destroy'

    post 'bookmark', to: 'bookmark#create'
    delete 'bookmark/:post_id', to: 'bookmark#destroy'
  end
end
