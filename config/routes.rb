Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  get 'signin/index'
  root "home#index"
  resources :account
  resources :articles do 
    resources :comments
  end
  post 'signin/signinform', :to => 'signin#loginform', as: :loginform
  post 'signin/signupform', :to => 'signin#signupform', as: :signupform
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end