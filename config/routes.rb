Rails.application.routes.draw do
  root to: "pets#index"
  devise_for :users
  resources :pets do
    resources :comments, only: :create
  end
  resources  :users,only: :show

 
end
