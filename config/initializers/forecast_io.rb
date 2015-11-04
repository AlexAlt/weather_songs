require 'forecast_io'

ForecastIO.configure do |config|
  config.api_key = ENV['FORECAST_API_KEY'] 
end
