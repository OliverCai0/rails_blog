Rails.application.routes.draw do
  get 'home/index', to: 'home#index'
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'signin/index', to: 'signin#index'
  get 'articles/archive', to: 'articles#archive'
  post 'articles/showtag', to: 'articles#showtag'
  root to: 'home#index'
  resources :articles do 
    resources :comments
  end
  get 'signin/signinform', :to => 'signin#loginform', as: :loginform
  get 'signin/signupform', :to => 'signin#signupform', as: :signupform
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end