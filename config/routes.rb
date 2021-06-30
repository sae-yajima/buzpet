Rails.application.routes.draw do
root to: "pets#index"
  devise_for :users
  resources :pets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources  :users,only: :show
end
