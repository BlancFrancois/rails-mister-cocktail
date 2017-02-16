Rails.application.routes.draw do

  root 'cocktails#index'

  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
