Rails.application.routes.draw do
  get 'reviews/new'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    collection do
      get 'top', to:"restaurants#top" # /restaurants/top
    end
    member do
      get 'chef', to:"restaurants#chef" #/restaurants/:id/chef
    end
  end

  resources: :reviews, only: [:show]



    #  get 'restaurants/top', to: 'restaurants#top'

  root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
