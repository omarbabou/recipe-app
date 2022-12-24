Rails.application.routes.draw do
  resources :recipe_foods
  devise_for :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :food_recipes resources :recipes do
    resources :recipe_foods, only:[:new,:create,:destroy]
 end
 get "/public_recipes" , to: "recipes#public_recipes"# Defines the root path route ("/")
  # root "articles#index"
  end
  root "recipes#public_recipes"
end
