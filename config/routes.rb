Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:index, :show, :edit, :update, :create, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :create, :update]

  get 'home/about' => 'homes#about', as: 'about'
end
