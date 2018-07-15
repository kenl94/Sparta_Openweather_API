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

end

# checking = Forecast.new
# p checking.get_response
# p checking.print_result
