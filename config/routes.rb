Rails.application.routes.draw do
  
  get 'welcome/index'

  root to: 'welcome#index'

  resources :docs

end
