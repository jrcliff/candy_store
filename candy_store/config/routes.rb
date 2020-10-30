Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'static#home', as: 'index'
  get '/credits', to: 'static#credits'
  get '/candies', to: 'candies#index'
  get '/candies/new', to: 'candies#new', as: 'new'
  get '/candies/:id', to: 'candies#show', as: 'show'
  post '/candies', to: 'candies#create'
end
