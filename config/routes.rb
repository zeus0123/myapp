Rails.application.routes.draw do
  # about page
  get "about", to: "about#index"

  # update password page

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # Sign Up Page
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # Sign In Pagerai
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
