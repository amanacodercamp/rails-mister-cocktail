# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :cocktails

#   root to: "cocktails#index"
# end
Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create]
  resources :doses, only: [:create, :destroy]
  resources :ingredients, only: [:show]

  root "cocktails#index"
end
