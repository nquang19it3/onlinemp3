Rails.application.routes.draw do
  resources :partners
  resources :genres
  resources :albums
  resources :artists
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "home#index"

  get "/home", to: "home#index"
  get "/admin", to: "admin#index"
  get "/page/album", to: "page#index"
  get "/search/all", to: "search#index"
end
