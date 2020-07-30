require 'rails_helper'
RSpec.describe Movie, :type => :model do
  it "can extract all movies from the same director" do
#     @mock_movie_one = FactoryOne.create(:movie)
#     @mock_movie_two = FactoryTwo.create(:movie)
#     movie_list = Movie.same_director(@mock_movie_one)
#     expect(movie_list).to include(@mock_movie_one, mock_movie_two)
    movie_one = Movie.create(title: 'Star Wars', rating: 'PG', director: 'George Lucas', release_date: '1977-05-25')
    movie_two = Movie.create(title: 'THX-1138', rating: 'R', director: 'George Lucas', release_date: '1971-03-11') 
    movie_list = Movie.same_director(movie_one)
    expect(movie_list).to include(movie_one, movie_two)
    Movie.delete(movie_one)
    Movie.delete(movie_two)
  end
end

