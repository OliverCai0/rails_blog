Rails.application.routes.draw do
  get 'signin/index'
  root "articles#index"
  resources :account
  resources :articles do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end