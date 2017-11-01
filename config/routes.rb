Rails.application.routes.draw do
  # get 'categories/index'

  # get 'categories/show'

  # get 'reviews/index'

  # get 'reviews/show'

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/:id', to: 'restaurants#show'


  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
