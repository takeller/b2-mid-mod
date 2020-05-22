require "rails_helper"

describe "When a user visits the studio index page" do

  before(:each) do
    @studio1 = Studio.create(name: "Warner Brothers", location: "LA")
    @studio2 = Studio.create(name: "Disney", location: "LA")

    @movie1 = @studio1.movies.create(title: "Batman Begins", year: 2007, genre: "Action")
    @movie2 = @studio1.movies.create(title: "Dark Knight", year: 2009, genre: "Action")
    @movie3 = @studio2.movies.create(title: "Star Wars: 7", year: 2016, genre: "SciFi")
    @movie4 = @studio2.movies.create(title: "Star Wars: 8", year: 2018, genre: "SciFi")
  end
  it "can see a list of all movie studios and their movies" do
    visit "/studios"

    expect(page).to have_content("Warner Brothers")
    expect(page).to have_content("Batman Begins")
    expect(page).to have_content("Dark Knight")
    expect(page).to have_content("Disney")
    expect(page).to have_content("Star Wars: 7")
    expect(page).to have_content("Star Wars: 8")

  end
end
