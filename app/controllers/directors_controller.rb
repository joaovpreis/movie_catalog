class DirectorsController < ApplicationController
  def index
    render plain: 'OK'
  end

  def new
    @director = Director.new
  end

  def show
    @director = Director.find params[:id]
  end

  def create
    @director = Director.new(director_params)
    redirect_to @director and return if @director.save

    render 'new'
  end

  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birthdate, :favorite_genre_id)
  end
end
