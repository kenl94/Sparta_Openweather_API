require_relative "./services/single_city_weather_service.rb"
require_relative "./services/forecast_service.rb"
require_relative "./services/uv_index_service.rb"

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

  def forecast
    Forecast.new
  end

  def uv_index
    UVIndex.new
  end
end

superClass = OpenweatherAPI.new

# city = superClass.single_city_weather
# city.get_response
# city.print_result

city2 = superClass.forecast
city2.get_response
city2.print_result
