Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # get 'cocktails', to: 'cocktails#index'

   # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

   # get 'cocktails/show/:id', to: 'cocktails#new'
   # post 'cocktails', to: 'cocktails#create'

   # resources :doses

  root to: 'cocktails#index'

  resources :doses, only: :destroy

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
end
