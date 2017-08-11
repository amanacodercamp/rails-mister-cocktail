# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :cocktails

#   root to: "cocktails#index"
# end
Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end

  resources :ingredients, only: [:show]
  delete "doses/:id", to: "doses#destroy"
  root "cocktails#index"
end
