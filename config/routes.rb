Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/index'

  authenticated :user do
    root to: 'docs#index', as: 'authenticated_root'
  end

  root to: 'welcome#index'

  resources :docs

end
