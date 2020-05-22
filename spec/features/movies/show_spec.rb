require "rails_helper"

describe "When a user visits a movie's show page" do

  before(:each) do
    @studio1 = Studio.create(name: "Warner Brothers", location: "LA")
    @studio2 = Studio.create(name: "Disney", location: "LA")

    @movie1 = @studio1.movies.create(title: "Batman Begins", year: 2007, genre: "Action")
    @movie2 = @studio1.movies.create(title: "Dark Knight", year: 2009, genre: "Action")
    @movie3 = @studio2.movies.create(title: "Star Wars: 7", year: 2016, genre: "SciFi")
    @movie4 = @studio2.movies.create(title: "Star Wars: 8", year: 2018, genre: "SciFi")
  end

  it "can see the movie's title, creation year, and genre" do
    visit "/studios/#{@studio1.id}/movies/#{@movie1.id}"

    expect(page).to have_content("Batman Begins")
    expect(page).to have_content("Creation Year: 2007")
    expect(page).to have_content("Genre: Action")
  end

  it "can see a list of all the movie's actors from youngest to oldest" do

  end

  it "can see the average age of all the movie's actors" do

  end
end
