Rails.application.routes.draw do
  resources :characters

  root "characters#index"

  get "/years/:year", to: "characters#by_year", as: "year"

  get "/houses/:house", to: "characters#by_house", as: "house"
end
