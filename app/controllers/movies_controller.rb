class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save!

    redirect_to new_movie_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :movie)
  end
end
