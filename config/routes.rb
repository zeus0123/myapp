Rails.application.routes.draw do
  # about page
  get "about", to: "about#index"

  root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
