Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    # collection do
    #   get :top
    # end
    get :top, on: :collection
    member do
      get :chef
    end

  resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
  # /restaurants/top
end
