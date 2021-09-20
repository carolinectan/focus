Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/discover', to: 'discover#index'
  get '/images', to: 'images#index'
  get '/images/by_title', to: 'images#by_title'
  get '/images/by_photographer', to: 'images#by_photographer'
end
