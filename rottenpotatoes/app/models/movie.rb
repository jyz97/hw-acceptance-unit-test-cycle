class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.same_director(movie)
    director_name = movie[:director]
    if director_name == ""     
      return nil
    end  
    Movie.where(director: director_name)
  end  
end
