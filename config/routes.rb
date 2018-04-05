Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}
  root 'welcome#index'

  post 'contentful/update', to: 'contentful#update'
  get 'contentful/index', to: 'contentful#index'
  get 'contentful/edit', to: 'contentful#edit'
  get 'contentful/show', to: 'contentful#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
