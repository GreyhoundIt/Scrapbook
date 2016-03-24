Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/index'

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"  #if logged in root is the docs page
  end
  root 'static_pages#index' # if not logged in root is index page
end
