Rails.application.routes.draw do
  resources :characters

  get "/years/:year", to: "characters#by_year", as: "year"

  get "/houses/:house", to: "characters#by_house", as: "house"
end
