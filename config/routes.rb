Rails.application.routes.draw do
  devise_for :users
  resources :lists
  get '/lists/search' => 'lists#search', as: 'search'
 get '/lists/random' => 'lists#random', as: 'random'
end
