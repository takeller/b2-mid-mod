# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@studio1 = Studio.create(name: "Warner Brothers", location: "LA")
@studio2 = Studio.create(name: "Disney", location: "LA")

@movie1 = @studio1.movies.create(title: "Batman Begins", year: 2007, genre: "Action")
@movie2 = @studio1.movies.create(title: "Dark Knight", year: 2009, genre: "Action")
@movie3 = @studio2.movies.create(title: "Star Wars: 7", year: 2016, genre: "SciFi")
@movie4 = @studio2.movies.create(title: "Star Wars: 8", year: 2018, genre: "SciFi")

@actor1 = Actor.create(name: "Christian Bale", age: 46)
@actor2 = Actor.create(name: "Katie Holmes", age: 41)
@actor3 = Actor.create(name: "Maggie Gyllenhaal", age: 42)
@actor4 = Actor.create(name: "Heath Ledger", age: 28)
@actor5 = Actor.create(name: "Daisy Ridley", age: 28)
@actor6 = Actor.create(name: "Adam Driver", age: 36)
@actor7 = Actor.create(name: "Oscar Isaac", age: 41)

@movie_actor1 = MovieActor.create(movie: @movie1, actor: @actor1)
@movie_actor2 = MovieActor.create(movie: @movie1, actor: @actor2)
@movie_actor3 = MovieActor.create(movie: @movie2, actor: @actor1)
@movie_actor4 = MovieActor.create(movie: @movie2, actor: @actor3)
@movie_actor5 = MovieActor.create(movie: @movie2, actor: @actor4)
@movie_actor6 = MovieActor.create(movie: @movie3, actor: @actor5)
@movie_actor7 = MovieActor.create(movie: @movie3, actor: @actor6)
@movie_actor8 = MovieActor.create(movie: @movie3, actor: @actor7)
@movie_actor9 = MovieActor.create(movie: @movie4, actor: @actor5)
@movie_actor10 = MovieActor.create(movie: @movie4, actor: @actor6)
@movie_actor11 = MovieActor.create(movie: @movie4, actor: @actor7)
