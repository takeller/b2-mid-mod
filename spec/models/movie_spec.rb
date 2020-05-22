require "rails_helper"

describe Movie, type: :model do
  describe "relationships" do
    it {should belong_to :studio}
    it {should have_many :movie_actors}
    it {should have_many(:actors).through(:movie_actors)}
  end

  describe "methods" do
    before(:each) do
      @studio1 = Studio.create(name: "Warner Brothers", location: "LA")
      @movie2 = @studio1.movies.create(title: "Dark Knight", year: 2009, genre: "Action")

      @actor1 = Actor.create(name: "Christian Bale", age: 46)
      @actor3 = Actor.create(name: "Maggie Gyllenhaal", age: 42)
      @actor4 = Actor.create(name: "Heath Ledger", age: 28)

      @movie_actor3 = MovieActor.create(movie: @movie2, actor: @actor1)
      @movie_actor4 = MovieActor.create(movie: @movie2, actor: @actor3)
      @movie_actor5 = MovieActor.create(movie: @movie2, actor: @actor4)

    end

    it "#sort_actors" do
      expect(@movie2.sort_actors).to eq([@actor4, @actor3, @actor1])
    end

    it "#average_age" do
      expect(@movie2.average_age).to eq(38.67)
    end
  end
end
