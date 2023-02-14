Rails.application.routes.draw do
  
  root "foods#index"
  get 'foods', to: 'foods#index'
  get '/foods/new', to: 'foods#new', as: 'new_food'
  get '/foods/:id', to: 'foods#destroy'
  post 'foods', to: 'foods#create'
  delete '/foods/:id', to: 'foods#destroy', as: 'food'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
