Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
