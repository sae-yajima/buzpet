Rails.application.routes.draw do
  devise_for :users
  root to: "pets#index"
  resources :pets do
    resources :comments,only:[:new,:create,:destroy]do
  end
  end
  resources  :users,only: :show
end
