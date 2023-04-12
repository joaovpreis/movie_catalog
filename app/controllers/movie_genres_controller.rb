class MovieGenresController < ApplicationController
  def show
    @movie_genre = MovieGenre.find params[:id]
    @list_movies = Movie.where(movie_genre_id: @movie_genre.id) 
  end

  def index
    @list_movie_genres = MovieGenre.all
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

  def edit
    @movie_genre = MovieGenre.find params[:id]
  end

  def update
    @movie_genre = MovieGenre.find params[:id]

    if @movie_genre.update(movie_genre_params)
      redirect_to @movie_genre and return
    end

    render 'edit'
  end

  private

  def movie_genre_params
    params.require(:movie_genre).permit(:name)
  end
end
