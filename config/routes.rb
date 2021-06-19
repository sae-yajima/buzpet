Rails.application.routes.draw do
  devise_for :users
  root to: "pets#index"
  resources :pets do
    resources :comments, only: :create
  end
  resources  :users,only: :show

 
end
