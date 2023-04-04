class DirectorsController < ApplicationController
  def index
    render plain: "OK"
  end

  def new
    @director = Director.new
  end

  def show
    @director = Director.find params[:id]
  end
  
  def create
    @director = Director.new(name: params[:director][:name], nationality: params[:director][:nationality], birthdate: params[:director][:birthdate], favorite_genre: params[:director][:favorite_genre])
    if @director.save
      redirect_to @director and return
    end
    render 'new'
  end    


end
