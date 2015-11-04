class ForecastsController < ApplicationController
  def index
    @forecasts = Forecast.all
    @forecast = ForecastIO.forecast(37.8267, -122.423)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def forecast_params
      params.require(:forecast).permit(:location)
    end
end
