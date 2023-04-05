class MovieGenresController < ApplicationController

  def show
    @movie_genre = MovieGenre.find params[:id]
  end

  def new
    @movie_genre = MovieGenre.new
  end
  
  def create
    @movie_genre = MovieGenre.new(movie_genre_params)
    if @movie_genre.save
      redirect_to @movie_genre and return
    end
    render 'new'
  end

  private

  def movie_genre_params
    params.require(:movie_genre).permit(:name)
  end

end
