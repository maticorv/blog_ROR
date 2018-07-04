Rails.application.routes.draw do
  devise_for :users
  get 'weolcome/index'
  resources :articles
  root 'weolcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
