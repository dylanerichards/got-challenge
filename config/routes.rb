Rails.application.routes.draw do
  resources :characters

  root "characters#index"

  get "/years/:year", to: "characters#by_year", as: "year"

  get "/houses/:house", to: "characters#by_house", as: "house"

  get "/born-within-years-of", to: "characters#born_within_years_of", as: "born_within_years_of"

  post "/born-within-years-of", to: "characters#born_within_years_of_results"
end
