Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create 
  end
  resources :users, only: :show
end
