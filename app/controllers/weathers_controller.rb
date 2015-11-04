class WeathersController < ApplicationController
  def index
    @weathers = Weather.all
    @weather = Weather.new
  end

  def show
    @weather = Weather.find(params[:id])
  
  end

  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.new(weather_params)
    if @weather.save
      redirect_to root_path
    else
      flash[:notice] = "Nope"
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def weather_params
      params.require(:weather).permit(:address, :longitude, :latitude, :response)
    end
end
