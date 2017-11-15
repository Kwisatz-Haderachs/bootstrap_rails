Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top', to:"restaurants#top" # /restaurants/top
    end
    member do
      get 'chef', to:"restaurants#chef" #/restaurants/:id/chef
    end
    resources :reviews, only: [ :new, :create ]
  end

  # resources :restaurants do
  # end

    #  get 'restaurants/top', to: 'restaurants#top'

  root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
