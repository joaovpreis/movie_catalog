class DirectorsController < ApplicationController
  def index
    @list_directors = Director.all
  end

  def new
    @director = Director.new
  end

  def show
    @director = Director.find params[:id]
    @list_movies = Movie.where(director_id: @director.id)
  end

  def create
    @director = Director.new(director_params)
    redirect_to @director and return if @director.save

    render 'new'
  end

  def edit
    @director = Director.find params[:id]
  end

  def update
    @director = Director.find params[:id]

    if @director.update(director_params)
      redirect_to @director and return
    end

    render 'edit'
  end

  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birthdate, :favorite_genre_id)
  end
end
