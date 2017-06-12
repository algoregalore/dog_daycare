Rails.application.routes.draw do
  resources :owners
  # key value pair
  #resources is method with arguments
  # CRUD operations
  resources :dogs
  # only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # creates routes just by resourced, we build them one by one, that's why i commented it out above

  # show lets us see individual item in database

  # sets dog page as root
  root 'dogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
