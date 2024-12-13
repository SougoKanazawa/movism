class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save!

    redirect_to new_movie_path
  end

  def show
    @movie = Movie.find_by_hashid!(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :movie)
  end
end
