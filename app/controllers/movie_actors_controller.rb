class MovieActorsController < ApplicationController

  def create
    movie = Movie.find(params[:movie_id])
    actor = Actor.find_by(name: params["actor"])
    MovieActor.create(movie_id: movie.id, actor_id: actor.id)
    redirect_back fallback_location: "/studios"
  end
end
