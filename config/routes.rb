Rails.application.routes.draw do

  namespace :api do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :update]
    resources :posts, only: [:index, :show, :create, :update, :destroy]

    post 'follow', to: 'follow#create'
    delete 'follow/:user_id', to: 'follow#destroy'

    post 'bookmark', to: 'bookmark#create'
    delete 'bookmark/:post_id', to: 'bookmark#destroy'
  end
end
