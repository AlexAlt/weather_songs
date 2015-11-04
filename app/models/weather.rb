class Weather < ActiveRecord::Base
  validates_presence_of :address
  geocoded_by :address
  before_save :geocode, :get_weather

  private
  def get_weather
    self.response = ForecastIO.forecast(self.latitude, self.longitude).currently
  end
end
