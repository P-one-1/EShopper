Rails.application.routes.draw do

  get 'users/new', to:'users#new'
  get 'users/show', to:'users#show'
  post 'users/create', to:'users#create'

  get 'blogs/blog', to:'blogs#blog'
  get 'blogs/blog_single', to:'blogs#blog_single'

  post 'sessions/login', to:'sessions#login'
  delete 'sessions/destroy', to:'sessions#destroy'

  get 'shops/shop', to:'shops#shop'
  get 'shops/product_details', to:'shops#product_details'
  get 'shops/cart', to:'shops#cart'
  get 'shops/checkout', to:'shops#checkout'

  root 'welcome#home'
  get 'welcome/home', to:'welcome#home'
  get 'welcome/contact', to:'welcome#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
