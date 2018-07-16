require "httparty"
require "json"
require "faker"

class Forecast

  include HTTParty
  base_uri "https://api.openweathermap.org/data/2.5/forecast?q="

  def initialize
    @api_key = '3c1ff560d8e4daf0e9ab05acd785179c'
    @city_name = 'Paris'
    @country_code = 'FR'
  end

  def get_response
    # city = Faker::WorldCup.city
    @city = JSON.parse(self.class.get("#{@city_name},#{@country_code}&mode=json&appid=#{@api_key}").body)
  end

  def print_result
    puts @city
  end

  def get_humidity
    @city["list"].first["main"]["humidity"]
  end

  def get_sea_level
    @city["list"].first["main"]["sea_level"]
  end

  def get_main
    @city["list"].first["main"]
  end

  def get_description
    @city["list"].first["weather"].first["description"]
  end

  def get_city_name
    @city["city"]["name"]
  end

  def get_country
    @city["city"]["country"]
  end

  def get_code
    @city["cod"]
  end

  def get_weather
    @city["list"].first["weather"].first["main"]
  end

  def get_wind_speed
    @city["list"].first["wind"]["speed"]
  end

  def get_temp
    @city["list"].first["main"]["temp"]
  end

  def get_min_temp
    @city["list"].first["main"]["temp_min"]
  end

  def get_max_temp
    @city["list"].first["main"]["temp_max"]
  end

  def get_list
    @city["list"]
  end

  def get_coord
    @city["city"]["coord"]
  end
end

checking = Forecast.new
p checking.get_response
# p checking.print_result
