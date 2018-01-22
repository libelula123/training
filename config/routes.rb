Rails.application.routes.draw do
  get 'articles/new'

  get 'welcome/index'

  resources :articles
  
  root 'welcome#index'
end
