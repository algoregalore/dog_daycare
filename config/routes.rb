Rails.application.routes.draw do
  # key value pair
  #resources is method with arguments
  resources :dogs, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # show lets us see individual item in database

  # sets dog page as root
  root 'dogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
