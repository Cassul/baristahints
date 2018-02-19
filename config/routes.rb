Rails.application.routes.draw do
  resources :clikes
  resources :likes
  resources :tags
  root 'welcome#index'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :hints
  resources :users
  post '/hint', to: 'comments#create'
  get 'hints/:id', to:'hints#show'
  delete '/comment/delete', to:'comments#destroy'
  get '/search_result', to: 'search#index'
end
