Rails.application.routes.draw do

mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :create ]
  end
  root "cocktails#index"
  resources :doses, only: [ :destroy ]
end
