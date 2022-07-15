Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :create, :new, :show] do
      resources :comments, only: [:create :new]
      resources :likes, only: [:create, :destroy]
  end
end

root to: 'users#index'
