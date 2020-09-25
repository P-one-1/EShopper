Rails.application.routes.draw do

  get 'sessions/new'
  post 'sessions/create'
  post 'sessions/login'

  get 'shops/shop'

  root 'welcome#home'
  get 'welcome/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
