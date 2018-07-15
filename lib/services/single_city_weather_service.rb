require "httparty"
require "json"
require "faker"

class SingleCityWeather

  include HTTParty
  base_uri "https://api.openweathermap.org/data/2.5/weather?q="
  def initialize
    @api_key = '3c1ff560d8e4daf0e9ab05acd785179c'
    @chosen_city = "London"
  end

  def get_response
    # city = Faker::WorldCup.city
    @city = JSON.parse(self.class.get("#{@chosen_city}&appid=#{@api_key}").body)
  end

  def print_result
    puts @city
  end

  def get_weather
      @city["weather"]
  end

  def get_description
      @city["weather"].first["description"]
  end

  def get_humidity
      @city["main"]["humidity"]
  end

  def get_code
    @city["status"]
  end

  def get_name
    @city["name"]
  end

  def temp_min
    @city["main"]["temp_min"]
  end

  def temp_max
    @city["main"]["temp_max"]
  end

  def get_visibility
    @city["visibility"]
  end

  def get_country
    @city["sys"]["country"]
  end

  def sunrise
    @city["sys"]["sunrise"]
  end

  def sunset
    @city["sys"]["sunset"]
  end

  def get_code
    @city["cod"]
  end

  def get_coord
    @city["coord"]
  end

  def get_sys
    @city["sys"]
  end

end

print_result = SingleCityWeather.new

print_result.get_response
p print_result.print_result
