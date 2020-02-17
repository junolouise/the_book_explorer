# frozen_string_literal: true

Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  resources :book_lists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
end
