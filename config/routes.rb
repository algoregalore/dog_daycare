Rails.application.routes.draw do
  # key value pair
  #resources is method with arguments
  resources :dogs, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
