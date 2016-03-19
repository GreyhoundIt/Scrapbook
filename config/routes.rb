Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/index'

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  root 'static_pages#index'
end
