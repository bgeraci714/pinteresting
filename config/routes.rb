Rails.application.routes.draw do
  resources :pins
  devise_for :users
  devise_for :views
  root "pins#index"
  get "about" => "pages#about" # creates about_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
