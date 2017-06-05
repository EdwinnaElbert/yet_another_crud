Rails.application.routes.draw do
  resources :sub_categories
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts do
    resources :comments
  end
  devise_for :users, controllers: {
   sessions: 'users/sessions'
  }
  resources :users, only: [:index]
  resources :comments, only: [:index]
  resources :categories
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
