Rails.application.routes.draw do

  get 'blogs/blog'
  get 'blogs/blog_single'
  
  get 'sessions/new'
  post 'sessions/create'
  post 'sessions/login'

  get 'shops/shop'
  get 'shops/product_details'
  get 'shops/cart'
  get 'shops/checkout'

  root 'welcome#home'
  get 'welcome/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
