Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  post 'contentful/update', to: 'contentful#update'
  get 'contentful/show', to: 'contentful#show'
  get 'contentful/edit', to: 'contentful#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
