Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists

  post 'add_favorites', to: 'lists#add_favorite'
  delete 'remove_favorites', to: 'lists#remove_favorite'
end
