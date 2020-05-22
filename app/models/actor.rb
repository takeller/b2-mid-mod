class Actor < ApplicationRecord
  has_many :movie_actors
  has_many :movies, through: :movie_actors

  def actors_worked_with
    actors_worked_with = []

    movies.each do |movie|
      actors_worked_with << movie.actors
    end
    actors_worked_with.flatten!
    actors_worked_with.uniq!
    actors_worked_with.delete(self)
    actors_worked_with
  end
end
