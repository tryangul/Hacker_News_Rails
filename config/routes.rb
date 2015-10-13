Rails.application.routes.draw do

  devise_for :users
  root 'links#index'


  resources :links do
    resources :comments, module: :links
  end

  resources :comments do
    resources :comments, module: :comments
  end

  resources :users

end
