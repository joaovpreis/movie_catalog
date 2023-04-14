class MoviesController < ApplicationController
  def index
    @list_movies = Movie.all
    
  end

  def show
    @movie = Movie.find params[:id]
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      redirect_to @movie and return
    end

    render 'new'
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    if @movie.update(movies_params)
      redirect_to @movie and return
    end

    render 'edit'
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :release_year, :synopsis, :country,
                                  :duration_in_minutes, :director_id, :movie_genre_id, :status)
  end
end
