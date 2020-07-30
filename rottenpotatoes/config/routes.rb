Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/same_director/:id', :to=> 'movies#directed_by', :as => 'same_director_movies'
end
