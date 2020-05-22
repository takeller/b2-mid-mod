require "rails_helper"

describe Actor, type: :model do
  describe "relationships" do
    it {should have_many(:movies).through(:movie_actors)}
    it {should have_many :movie_actors}
  end

  describe "methods" do

    before(:each) do
      @studio1 = Studio.create(name: "Warner Brothers", location: "LA")

      @movie1 = @studio1.movies.create(title: "Batman Begins", year: 2007, genre: "Action")
      @movie2 = @studio1.movies.create(title: "Dark Knight", year: 2009, genre: "Action")

      @actor1 = Actor.create(name: "Christian Bale", age: 46)
      @actor2 = Actor.create(name: "Katie Holmes", age: 41)
      @actor3 = Actor.create(name: "Maggie Gyllenhaal", age: 42)
      @actor4 = Actor.create(name: "Heath Ledger", age: 28)

      @movie_actor1 = MovieActor.create(movie: @movie1, actor: @actor1)
      @movie_actor2 = MovieActor.create(movie: @movie1, actor: @actor2)
      @movie_actor3 = MovieActor.create(movie: @movie2, actor: @actor1)
      @movie_actor4 = MovieActor.create(movie: @movie2, actor: @actor3)
      @movie_actor5 = MovieActor.create(movie: @movie2, actor: @actor4)
    end

    it "#actors_worked_with" do
      expect(@actor1.actors_worked_with).to eq([@actor2, @actor3, @actor4])
      expect(@actor2.actors_worked_with).to eq([@actor1])
    end
  end
end
