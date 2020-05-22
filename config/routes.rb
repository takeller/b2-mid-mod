Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/studios", to: "studios#index"
  get "/studios/:studio_id/movies/:movie_id", to: "movies#show"

  post "/studios/:studio_id/movies/:movie_id/actors", to: "movie_actors#create"

  get "/actors/:id", to: "actors#show"
end
