Substance::Application.routes.draw do
  devise_for :users

  resources :users, :only => [:show] do
    resources :follows, :only => [:create, :destroy]
  end

  root to: 'home#index'
end
